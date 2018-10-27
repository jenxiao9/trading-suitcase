import datetime

class Order:
    def __init__(self, t_date, stock_symbol, expiration, strike, call_put, 
            symbol, price_bid, price_ask, price_last, date_bid, date_ask, date_last, 
            size_bid, size_ask, volume, iv,delta, gamma, theta, vega, rho, pre_iv):

        self.t_date = t_date
        self.stock_symbol = stock_symbol
        self.expiration = expiration
        self.strike = strike
        self.call_put = call_put
        self.price_bid = price_bid
        self.price_ask = price_ask
        self.price_last = price_last
        self.date_bid = date_bid
        self.date_ask = date_ask
        self.date_last = date_last
        self.size_bid = size_bid
        self.size_ask = size_ask
        self.volume = volume
        self.iv = iv
        self.delta = delta
        self.gamma = gamma
        self.theta = theta
        self.vega = vega
        self.rho = rho
        self.pre_iv = pre_iv

