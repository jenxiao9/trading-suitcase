import datetime
import struct

#from stack overflow
def chr_rep(num):
    f = struct.pack('!f', num)
    x = ""
    for c in f:
        x += chr(c)
    return x

class Order:
    def __init__(self, price_opt, strike, r, iv, expiration_yrs, call_put, option_id):
        self.price_opt = price_opt
        self.strike = strike
        self.r = r
        self.iv = iv
        self.expiration_yrs = expiration_yrs
        self.call_put = call_put
        self.option_id = option_id
        self.packet = ""

    def pkt(self):

        option_id = chr_rep(self.option_id)

        price_opt = chr_rep(self.price_opt)

        strike = chr_rep(self.strike)

        r = chr_rep(self.r)

        iv = chr_rep(self.iv)

        expiration_yrs = chr_rep(self.expiration_yrs)

        self.packet = option_id + price_opt + strike + r + iv + expiration_yrs + self.call_put

        return self.packet

