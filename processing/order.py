import datetime
import struct

#from stack overflow
def chr_rep(num):
    f = struct.pack('!f', num)
    x = ""
    for c in f:
        x += chr(c)
    return x

def int_chr_rep(num):
    f = struct.pack('!L', num)
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
        self.s = "{%hu,%f,%f,%f,%f,%f,%c},\n" %(option_id, float(price_opt), float(strike), r, float(iv), expiration_yrs, call_put)

    def __repr__(self):
        return self.s

    def __str__(self):
        return self.s

    def __eq__(self, other):
        return (self.s == other.s)

    def pkt(self):
        option_id = chr_rep(self.option_id)

        price_opt = chr_rep(self.price_opt)

        strike = chr_rep(self.strike)

        r = chr_rep(self.r)

        iv = chr_rep(self.iv)

        expiration_yrs = chr_rep(self.expiration_yrs)
        call_put = int_chr_rep(self.call_put)

        '''
        pkt is: [191:161] id
        [160] is c/p, 0 = call 1 = put
        [159:128] is price_opt
        [127:96] is strike
        [95:64] is r
        [63:32] is iv
        [31:0] is expiration time
        '''
        self.packet = option_id + price_opt + strike + r + iv + expiration_yrs;
        return self.packet

