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
#define FAST_EXP_MAX_TAYLOR 9 
double EXP_TABLE_2D[128][10];
double EXP_TABLE_3D[256][2][10];
double oneOver_i[FAST_EXP_MAX_TAYLOR+1];

//Precision to use for calculations
#define fptype float

#define NUM_RUNS 100

int factorial(const int n){
  int i, result;

  result = 1.0;
  for(i=1;i<n+1;i++){
    result *= i;
  }
  return result;
}

int fact_cache[11]; 

void makeCache(){ 
    for (int i = 0; i < 10; i ++) {
        fact_cache[i] =  factorial(i);
    }
} 


#define inv_sqrt_2xPI 0.39894228040143270286

int fxexp(int x) {
  int t,y;

  y=0x00010000;
  t=x-0x58b91; if(t>=0) x=t,y<<=8;
  t=x-0x2c5c8; if(t>=0) x=t,y<<=4;
  t=x-0x162e4; if(t>=0) x=t,y<<=2;
  t=x-0x0b172; if(t>=0) x=t,y<<=1;
  t=x-0x067cd; if(t>=0) x=t,y+=y>>1;
  t=x-0x03920; if(t>=0) x=t,y+=y>>2;
  t=x-0x01e27; if(t>=0) x=t,y+=y>>3;
  t=x-0x00f85; if(t>=0) x=t,y+=y>>4;
  t=x-0x007e1; if(t>=0) x=t,y+=y>>5;
  t=x-0x003f8; if(t>=0) x=t,y+=y>>6;
  t=x-0x001fe; if(t>=0) x=t,y+=y>>7;
  if(x&0x100)               y+=y>>8;
  if(x&0x080)               y+=y>>9;
  if(x&0x040)               y+=y>>10;
  if(x&0x020)               y+=y>>11;
  if(x&0x010)               y+=y>>12;
  if(x&0x008)               y+=y>>13;
  if(x&0x004)               y+=y>>14;
  if(x&0x002)               y+=y>>15;
  if(x&0x001)               y+=y>>16;
  return y;
  }

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



fptype fast_exp (fptype x)
 {
   union {
     float f;
     unsigned int i;
   } cvt,cvt2;

   /* exp(x) = 2^i * 2^f; i = floor (log2(e) * x), 0 <= f <= 1 */
   float t = x * 1.44269504089f;
   cvt.f = floorf (t);
   float f = t - cvt2.f;
   //printf("float is = %f \n", f);
   cvt.f = (0.3371894346f * f + 0.657636276f) * f + 1.00172476f; /* compute 2^f */
   cvt.i += (cvt2.i << 23);                                          /* scale by 2^i */
   //printf("result cvt is = %f \n", cvt.f);
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
                            fptype time, int otype, float timet )
{
    fptype OptionPrice;
    int cache[12];

    cache[0] = 2; 
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

fptype fastExp(fptype input) 
{
 fptype result = 0; 
  for (int i=0 ; i < 11; i ++) { 
      //printf("factcache in fastexp = %d", fact_cache[i]);  
      //printf("result = %f \n", result);
      //printf("powf = %f \n", powf(input,i));
 
      result += powf(input,i) / fact_cache[i];  
  }
  return result; 
}
