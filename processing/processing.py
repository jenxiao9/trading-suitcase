import sys
import csv
import order
import datetime
import sys

#import data
import os
import time 

TOTAL_ROWS = 10000

def raw_data(file, output_file, total_rows = TOTAL_ROWS):
    rows = 0
    with open(output_file, 'w') as output:

        with open(file, "r") as f:
            for row in f:
                output.write(row)
                rows +=1
                if rows == total_rows:
                    break

def save_file_place(file, output_file, start_over=False):
    """
    fileseeking code from stackoverflow
    Runs process_orders and retains place in file

    """

    # take last part of a file for the savefile
    s = file.split("/")[-1]

    save_file = ".fileinfo" + s

    if not os.path.exists(save_file) or start_over:
         seek_from = 0
    else:
         of = open(savefile, 'r')
         seek_from = int(of.readline().strip())

    end = process_orders(file, output_file, start_from=seek_from)

    of = open(savefile, 'w')
    of.write(str(end))
    of.close()

def process_orders(file, output_file, total_rows = TOTAL_ROWS, start_from = 0):
    """
    Processes orders from file and saves data ready for blackscholes.simd.d in 
    output_file. Will process up to total_rows worth of data, and starts at
    line start_from
    Sends any data processed through UART
    """

    secondsPerYear = float(365*24*60*60)
    rows = 0
    r = .02676

    with open(output_file, 'w') as output:
        output.write("%d\n" %(total_rows))

        f = open(file, "r")
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

            option_id = option_id & 0xfffffffe #convert to 32 bit

            if call_put == 'C':
                call_put = 0x00000000;
            else:
                call_put = 0x00000001;

            option_id = option_id | call_put;

            x = order.Order(float(price_opt), float(strike), r, float(iv), expiration_yrs, call_put, option_id)
            pkt = x.pkt()

            pkt = pkt.encode()

            ''' #this is the data sending code
            data.send_uart_package(pkt)
            time.sleep(.5)
            data.read_back()
            '''

            break
            s = x.s

            output.write(s)
            if rows == total_rows:
                break
        
    end = f.tell()  
    f.close()  

    return end


if __name__ == "__main__":
    if len(sys.argv) < 4:
        raise Exception("""
            Use case: For making a new, shorter raw file: processing.py raw input_file output_file total_rows
            For processing code: processing.py processing input_file output_file
            """)
    else:
        orig_file = sys.argv[2]
        result_file = sys.argv[3]

        if sys.argv[1] in "process":
            save_file_place(orig_file, result_file)
        elif sys.argv[1] in "raw":
            total_rows = sys.argv[4]
            raw_data(orig_file, result_file, total_rows)
