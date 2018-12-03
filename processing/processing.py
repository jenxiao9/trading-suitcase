import sys
import csv
import order
import datetime
import sys
import data


def process_orders(file, output_file, total_rows = 1000):

    secondsPerYear = float(365*24*60*60)
    rows = 0
    r = .02676
    with open(output_file, 'w') as output:
        output.write("%d\n" %(total_rows))

        with open(file, "r") as f:
            order_reader = csv.reader(f, delimiter=",")
            for row in order_reader:
                rows += 1   

                if len(row) != 28:
                    raise Exception("Row in CSV does not have expected number of items")
                [t_date, stock_id, stock_symbol, expiry, strike, call_put, style, symbol, 
                price_bid, price_ask, date_bid, date_ask, size_bid, 
                size_ask, exchange_bid, exchange_ask, volume, iv, price_opt,delta, 
                gamma, theta, vega, rho, pre_iv, implied_yield, dump_time, calc_date] = row
            
                # we should figure out what to do with stock / option id 
                expiry = expiry + " 17:00:00" #to add the expiration time
                expiration_dt = datetime.datetime.strptime(expiry, "%Y-%m-%d %H:%M:%S")
                calc_dt = datetime.datetime.strptime(calc_date, "%Y-%m-%d %H:%M:%S")

                expiration_time = expiration_dt - calc_dt
                expiration_yrs = expiration_time.seconds / (secondsPerYear)
                option_id = hash(symbol)

                option_id = option_id & 0xffffffff #convert to 32 bit
                s = "{%hu,%f,%f,%f,%f,%f,%c},\n" %(option_id, float(price_opt), float(strike), r, float(iv), expiration_yrs, call_put)

                if call_put == 'C':
                    call_put = 0;
                else:
                    call_put = 1;

                x = order.Order(float(price_opt), float(strike), r, float(iv), expiration_yrs, call_put, option_id)
                pkt = x.pkt()

                pkt = pkt.encode()
                print(pkt)
                #data.send_uart_package(pkt)

                output.write(s)
                if rows == total_rows:
                    break

def send_order(order):
    pass 

def test_orders(original_file, output_file, rows = [0, 1000]):
    with open(original_file, "r") as f:
        order_reader = csv.reader(f, delimiter=",")

        line_num = 0
        for line in order_reader:
            print(line)
            [t_date, stock_id, stock_symbol, expiry, strike, call_put, style, symbol, 
            price_bid, price_ask, price_last, date_bid, date_ask, date_last, size_bid, 
            size_ask, exchange_bid, exchange_ask, volume, iv, delta, 
            gamma, theta, vega, rho, pre_iv, implied_yield, calc_date] = line
                        
            break
            if line_num in rows:
                break

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(len(sys.argv))
        raise Exception("Please give an input file to process")
    else:
        orig_file = sys.argv[1]
        result_file = sys.argv[2]
        process_orders(orig_file, result_file)