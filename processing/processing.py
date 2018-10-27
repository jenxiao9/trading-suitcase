import sys
import csv
import order

def process_orders(file):
    rows = 0
    with open(file, "r") as f:
        order_reader = csv.reader(f, delimiter=",")
        for row in order_reader:
            rows += 1
            print(row)
            if len(row) != 28:
                raise Exception("Row in CSV does not have expected number of items")
            [t_date, stock_id, stock_symbol, expiry, strike, call_put, style, symbol, 
            price_bid, price_ask, price_last, date_bid, date_ask, date_last, size_bid, 
            size_ask, exchange_bid, exchange_ask, volume, iv, delta, 
            gamma, theta, vega, rho, pre_iv, implied_yield, calc_date] = row
            
            # we need: t_date, stock_symbol, expiration date, strike, call_put, 
            # symbol (option symbol), price_bid, price_ask, date_bid, date_ask,
            # size_bid, size_ask, volume, iv, price_opt, delta, gamma, theta, 
            # vega, rho, pre_iv
            current_order = order.Order(t_date, stock_symbol, expiry, strike, call_put, 
            symbol, price_bid, price_ask, price_last, date_bid, date_ask, date_last, 
            size_bid, size_ask, volume, iv,delta, gamma, theta, vega, rho, pre_iv)

            if rows == 10:
                break
def send_order(order):
    pass 





if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(len(sys.argv))
        raise Exception("Please give an input file to process")
    else:
        process_orders(sys.argv[1])