#!/usr/bin/env python

# edited from https://introcs.cs.princeton.edu/python/21function/blackscholes.py

#-----------------------------------------------------------------------
# blackscholes.py
#-----------------------------------------------------------------------

import sys
import struct
import math

#-----------------------------------------------------------------------

# Return the value of the Gaussian probability function with mean 0.0
# and standard deviation 1.0 at the given x value.

def phi(x):
    return math.exp(-x * x / 2.0) / math.sqrt(2.0 * math.pi)

#-----------------------------------------------------------------------

# Return the value of the Gaussian probability function with mean mu
# and standard deviation sigma at the given x value.

def pdf(x, mu=0.0, sigma=1.0):
    return phi((x - mu) / sigma) / sigma

#-----------------------------------------------------------------------

# Return the value of the cumulative Gaussian distribution function
# with mean 0.0 and standard deviation 1.0 at the given z value.

def Phi(z):
    if z < -8.0: return 0.0
    if z >  8.0: return 1.0
    total = 0.0
    term = z
    i = 3
    while total != total + term:
        total += term
        term *= z * z / float(i)
        i += 2
    return 0.5 + total * phi(z)

#-----------------------------------------------------------------------

# Return standard Gaussian cdf with mean mu and stddev sigma.
# Use Taylor approximation.

def cdf(z, mu=0.0, sigma=1.0):
    return Phi((z - mu) / sigma)

#-----------------------------------------------------------------------

# Black-Scholes formula.

def callPrice(s, x, r, sigma, t):
    a = (math.log(s/x) + (r + sigma * sigma/2.0) * t) / \
        (sigma * math.sqrt(t))
    b = a - sigma * math.sqrt(t)
    return s * cdf(a) - x * math.exp(-r * t) * cdf(b)

def float_to_hex(f):
    return hex(struct.unpack('<I', struct.pack('<f', f))[0])


def put_price(s, c, x, r, t):
    """
    Uses put-call parity to calculate put price given stock price, call price,
    strike price, risk free interest rate, and time to expiration
    """
    
    return (c - s + x*math.exp(-r*t))
#-----------------------------------------------------------------------

# Accept s, x, r, sigma, and t from the command line and write
# the Black-Scholes value.
if __name__ == "__main__":

    if len(sys.argv) > 5:
        s     = float(sys.argv[1])
        x     = float(sys.argv[2])
        r     = float(sys.argv[3])
        sigma = float(sys.argv[4])
        t     = float(sys.argv[5])
        cp = callPrice(s, x, r, sigma, t)
        c_hex_val = float_to_hex(cp)
        pp = put_price(s, cp, x, r, t)
        p_hex_val = float_to_hex(pp)

        print("call price: $%f, $%s" % (cp, c_hex_val))
        print("put price: $%f, $%s" % (pp, p_hex_val))

    elif((len(sys.argv) > 1) and sys.argv[1] == "test"):
        pass

    else:
        raise IOError("Not enough arguments given. Please provide share, strike,\
       interest rate, volatility, and expiration time")

#-----------------------------------------------------------------------

# python blackscholes.py 23.75 15.00 0.01 0.35 0.5
# 8.879159263714124   (actual =  9.10)

# $ python blackscholes.py 30.14 15.0 0.01 0.332 0.25
# 15.177462481558178   (actual = 14.50)

# Information calculated based on closing data on Monday, June 9th 2003.
#
# Microsoft:   share price:             23.75
#              strike price:            15.00
#              risk-free interest rate:  1%
#              volatility:              35%      (historical estimate)
#              time until expiration:    0.5 years
#
# GE:          share price:             30.14
#              strike price:            15.00
#              risk-free interest rate   1%
#              volatility:              33.2%    (historical estimate)
#              time until expiration     0.25 years
#
# Reference:  http://www.hoadley.net/options/develtoolsvolcalc.htm
