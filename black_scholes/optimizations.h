// Copyright (c) 2007 Intel Corp.

// Black-Scholes
// Analytical method for calculating European Options
//
// 
// Reference Source: Options, Futures, and Other Derivatives, 3rd Edition, Prentice 
// Hall, John C. Hull,

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <time.h> 

#ifdef ENABLE_PARSEC_HOOKS
#include <hooks.h>
#endif

// Multi-threaded pthreads header
#ifdef ENABLE_THREADS
// Add the following line so that icc 9.0 is compatible with pthread lib.
#define __thread __threadp
MAIN_ENV
#undef __thread
#endif

// Multi-threaded OpenMP header
#ifdef ENABLE_OPENMP
#include <omp.h>
#endif

#ifdef ENABLE_TBB
#include "tbb/blocked_range.h"
#include "tbb/parallel_for.h"
#include "tbb/task_scheduler_init.h"
#include "tbb/tick_count.h"

using namespace std;
using namespace tbb;
#endif //ENABLE_TBB

// Multi-threaded header for Windows
#ifdef WIN32
#pragma warning(disable : 4305)
#pragma warning(disable : 4244)
#include <windows.h>
#endif


//Precision to use for calculations
#define fptype float

#define NUM_RUNS 100


typedef struct OptionData_ {
        fptype s;          // spot price
        fptype strike;     // strike price
        fptype r;          // risk-free interest rate
        fptype divq;       // dividend rate
        fptype v;          // volatility
        fptype t;          // time to maturity or option expiration in years 
                           //     (1yr = 1.0, 6mos = 0.5, 3mos = 0.25, ..., etc)  
        char OptionType;   // Option type.  "P"=PUT, "C"=CALL
        fptype divs;       // dividend vals (not used in this test)
        fptype DGrefval;   // DerivaGem Reference Value
} OptionData;

OptionData *data;
fptype *prices;
int numOptions;

int    * otype;
fptype * sptprice;
fptype * strike;
fptype * rate;
fptype * volatility;
fptype * otime;
int numError = 0;
int nThreads;

#define inv_sqrt_2xPI 0.39894228040143270286

fptype fast_exp_initial(fptype x)
 {
    union {
      float cf;
      unsigned int ci;
   } cvt; 

   /* exp(x) = 2^i * 2^f; i = floor (log2(e) * x), 0 <= f <= 1 */
   float t = x * 1.44269504089f;
   //printf("result t is = %f \n", t);   
   float fi = floorf (t);
   //printf("result fi is = %d \n", fi);
   float f = t - fi;
   //printf("float f is = %d \n", f);
   int i = (int)fi;
   cvt.cf = (0.3371894346f * f + 0.657636276f) * f + 1.00172476f; /* compute 2^f */
   //printf("result cvt1 is = %f \n", cvt.cf);
   cvt.ci += (i << 23);                                          /* scale by 2^i */
   //printf("result cvt is = %f \n", cvt.cf);
   return cvt.cf;
 }

//https://stackoverflow.com/questions/47025373/fastest-implementation-of-exponential-function-using-sse/47025627#47025627

 fptype fast_exp_first(fptype x) 
 {

    union { 
      float f; 
      unsigned int i; 
    } cvt; 

    printf("result x is = %f \n", x);
    float log2e = 1.4426950489f; //log2(e) 
    float lowerB =  -6.93145752e-1f; //-log(2)_hi
    float upperB =  -1.42860677e-6f;//-log(2)_lo

    printf("LOWER RESULT is = %f \n", lowerB);
    //coefficients 
    float c0 = 0.041944388f;
    float c1 = 0.168006673f; 
    float c2 = 0.499999940f; 
    float c3 = 0.999956906f;
    float c4 = 0.999999642f; 

    //exp(x) = rint(log2(e) * x), f = x - log(2) * i 
    float t = x * 1.44269504089f; 
    float r = floorf (t); //rint(t)
    //float f = x - upperB * r - lowerB * r; //f = x - log(2)_hi * r - log(2)_lo * r 
    //float f = t - r;
    int i = (int)r;  //rint(x * log2(e)) 
    float f = x - (upperB  - lowerB) * r;  

    float kk; 

    cvt.f = ((((c0 * f + c1) * f  + c2) * f + c3) * f + c4); 

    cvt.i += i << 23; 


    return cvt.f; 
 }

fptype fast_exp (fptype x) 
 {

    union { 
      float f; 
      unsigned int i; 
    } cvt; 

    float log2e = 1.4426950489f; //log2(e) 
    float lowerB =  -6.93145752e-1f; //-log(2)_hi
    float upperB =  -1.42860677e-6f;//-log(2)_lo

    //coefficients 
    float c0 = 0.008301110f;
    float c1 = 0.041906696f; 
    float c2 = 0.166674897f; 
    float c3 = 0.499990642f;
    float c4 = 0.999999762f; 
    float c5 = 1.000000000f; 

    //exp(x) = rint(log2(e) * x), f = x - log(2) * i 
    float t = x * 1.44269504089f; 
    float r = floorf (t); //rint(t)
    int i = (int)r;  //rint(x * log2(e)) 
    float f = x - (upperB  - lowerB) * r;  

    float kk; 

    cvt.f = ((((c0 * f + c1) * f  + c2) * f + c3) * f + c4) * f + c5; 
    cvt.i += i << 23; 

    //printf("result cvt5 is = %f \n", cvt.f);
    //r = cvt.f; 

    return cvt.f; 
 }


fptype CNDF ( fptype InputX ) 
{
    int sign;

    fptype OutputX;
    fptype xInput;
    fptype xNPrimeofX;
    fptype expValues;
    fptype xK2;
    fptype xK2_2, xK2_3;
    fptype xK2_4, xK2_5;
    fptype xLocal, xLocal_1;
    fptype xLocal_2, xLocal_3;

    // Check for negative value of InputX
    if (InputX < 0.0) {
        InputX = -InputX;
        sign = 1;
    } else 
        sign = 0;

    xInput = InputX;
 
    // Compute NPrimeX term common to both four & six decimal accuracy calcs
    expValues = fast_exp(-0.5f * InputX * InputX);
    xNPrimeofX = expValues;
    xNPrimeofX = xNPrimeofX * inv_sqrt_2xPI;

    xK2 = 0.2316419 * xInput;
    xK2 = 1.0 + xK2;
    xK2 = 1.0 / xK2;
    xK2_2 = xK2 * xK2;
    xK2_3 = xK2_2 * xK2;
    xK2_4 = xK2_3 * xK2;
    xK2_5 = xK2_4 * xK2;
    
    xLocal_1 = xK2 * 0.319381530;
    xLocal_2 = xK2_2 * (-0.356563782);
    xLocal_3 = xK2_3 * 1.781477937;
    xLocal_2 = xLocal_2 + xLocal_3;
    xLocal_3 = xK2_4 * (-1.821255978);
    xLocal_2 = xLocal_2 + xLocal_3;
    xLocal_3 = xK2_5 * 1.330274429;
    xLocal_2 = xLocal_2 + xLocal_3;

    xLocal_1 = xLocal_2 + xLocal_1;
    xLocal   = xLocal_1 * xNPrimeofX;
    xLocal   = 1.0 - xLocal;

    OutputX  = xLocal;
    
    if (sign) {
        OutputX = 1.0 - OutputX;
    }
    
    return OutputX;
} 

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
fptype BlkSchlsEqEuroNoDiv( fptype sptprice,
                            fptype strike, fptype rate, fptype volatility,
                            fptype time, int otype)
{

    fptype OptionPrice;
    //int* const cache = new int[12];  

    // cache[0] = 2; 
    //printf("the CACHE AT 0 Is %d", cache[0]); 
    
    // local private working variables for the calculation
    fptype xStockPrice;
    fptype xStrikePrice;
    fptype xRiskFreeRate;
    fptype xVolatility;
    fptype xTime;
    fptype xSqrtTime;

    fptype logValues;
    fptype xLogTerm;
    fptype xD1; 
    fptype xD2;
    fptype xPowerTerm;
    fptype xDen;
    fptype d1;
    fptype d2;
    fptype FutureValueX;
    fptype NofXd1;
    fptype NofXd2;
    fptype NegNofXd1;
    fptype NegNofXd2;    
    
    xStockPrice = sptprice;
    xStrikePrice = strike;
    xRiskFreeRate = rate;
    xVolatility = volatility;

    xTime = time;
    xSqrtTime = sqrt(xTime);

    logValues = log( sptprice / strike );
        
    xLogTerm = logValues;
        
    
    xPowerTerm = xVolatility * xVolatility;
    xPowerTerm = xPowerTerm * 0.5;
        
    xD1 = xRiskFreeRate + xPowerTerm;
    xD1 = xD1 * xTime;
    xD1 = xD1 + xLogTerm;

    xDen = xVolatility * xSqrtTime;
    xD1 = xD1 / xDen;
    xD2 = xD1 -  xDen;

    d1 = xD1;
    d2 = xD2;
    
    NofXd1 = CNDF( d1 );
    NofXd2 = CNDF( d2 );

    FutureValueX = strike * ( fast_exp( -(rate)*(time) ) );        
    if (otype == 0) {            
        OptionPrice = (sptprice * NofXd1) - (FutureValueX * NofXd2);
    } else { 
        NegNofXd1 = (1.0 - NofXd1);
        NegNofXd2 = (1.0 - NofXd2);
        OptionPrice = (FutureValueX * NegNofXd2) - (sptprice * NegNofXd1);
    }
    

    return OptionPrice;
}


#ifdef ENABLE_TBB
struct mainWork {
  mainWork() {}
  mainWork(mainWork &w, tbb::split) {}

  void operator()(const tbb::blocked_range<int> &range) const {
    fptype price;
    int begin = range.begin();
    int end = range.end();

    for (int i=begin; i!=end; i++) {
      /* Calling main function to calculate option value based on 
       * Black & Scholes's equation.
       */

      price = BlkSchlsEqEuroNoDiv( sptprice[i], strike[i],
                                   rate[i], volatility[i], otime[i], 
                                   otype[i]);
      prices[i] = price;

#ifdef ERR_CHK 
      fptype priceDelta = data[i].DGrefval - price;
      if( fabs(priceDelta) >= 1e-5 ){
        fprintf(stderr,"Error on %d. Computed=%.5f, Ref=%.5f, Delta=%.5f\n",
               i, price, data[i].DGrefval, priceDelta);
        numError ++;
      }
#endif
    }
  }
};

#endif // ENABLE_TBB

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

#ifdef ENABLE_TBB
int bs_thread(void *tid_ptr) {
    int j;
    tbb::affinity_partitioner a;

    mainWork doall;
    for (j=0; j<NUM_RUNS; j++) {
      tbb::parallel_for(tbb::blocked_range<int>(0, numOptions), doall, a);
    }

    return 0;
}
#else // !ENABLE_TBB

#ifdef WIN32
DWORD WINAPI bs_thread(LPVOID tid_ptr){
#else
int bs_thread(void *tid_ptr) {
#endif
    int i, j;
    fptype price;
    fptype priceDelta;
    int tid = *(int *)tid_ptr;
    int start = tid * (numOptions / nThreads);
    int end = start + (numOptions / nThreads);

    for (j=0; j<NUM_RUNS; j++) {
#ifdef ENABLE_OPENMP
#pragma omp parallel for private(i, price, priceDelta)
        for (i=0; i<numOptions; i++) {
#else  //ENABLE_OPENMP
        for (i=start; i<end; i++) {
#endif //ENABLE_OPENMP
            /* Calling main function to calculate option value based on 
             * Black & Scholes's equation.
             */
            price = BlkSchlsEqEuroNoDiv( sptprice[i], strike[i],
                                         rate[i], volatility[i], otime[i], 
                                         otype[i]);
            prices[i] = price;

#ifdef ERR_CHK
            priceDelta = data[i].DGrefval - price;
            if( fabs(priceDelta) >= 1e-4 ){
                printf("Error on %d. Computed=%.5f, Ref=%.5f, Delta=%.5f\n",
                       i, price, data[i].DGrefval, priceDelta);
                numError ++;
            }
#endif
        }
    }

    return 0;
}
#endif //ENABLE_TBB


int main (int argc, char **argv)
{

	/*fptype BlkSchlsEqEuroNoDiv( fptype sptprice,
                            fptype strike, fptype rate, fptype volatility,
                            fptype time, int otype, float timet ) */ 
    


	//printf("x, fast, normal\n"); 

    fptype price1 = BlkSchlsEqEuroNoDiv(2, 3,
                                      1, 2, 3,
                                      5);

    fptype price2 = BlkSchlsEqEuroNoDiv(1, 1.1,
                                    2, 3, 2, 1);



    /*
    for (float i = -15 ;i < 15; i = i + 0.5)
    {          
    	//blackScholes      
    	printf("%f, %f, %f\n",i, fast_exp(i), exp(i));   
    } */  

    fptype price3 = BlkSchlsEqEuroNoDiv(278.7, 2275,
                                    2, 0.2085, 0.56, 
                                   1);
    

    //printf("this process took %f", cpu_time_used);                                
    printf ("Price1 is  = %f \n", price1);        
    printf ("Price2 is  = %f \n", price2);                           
    printf ("Price3 is  = %f \n", price3);                           
    
    //fptype newstuff = fast_exp_new(2.3); 
    //printf ("Price is 2 = %f \n", newstuff);                                 



 return 0;
}
