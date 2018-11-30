#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>


#define fptype float

fptype fast_exp(fptype x) 
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
