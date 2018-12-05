import sys
import csv
import order
import datetime
import sys
import data
import os
import time 

import msvcrt as m



TOTAL_ROWS = 10

def wait():
    m.getch()

def read_packet(output_file):
    bytes_read = 0
    read = []
    while (bytes_read < 12):
        x = data.read_back()
        if x is not None:
            read = read.append()
            bytes_read += 1
    return read


def save_file_place(file, output_file, start_over=False):
    """
    fileseeking code from stackoverflow
    Runs process_orders and retains place in file

    """

    # take last part of a file for the savefile
    s = file.split("\\")[-1]

    save_file = ".fileinfo" + s

    if not os.path.exists(save_file) or start_over:
         seek_from = 0
    else:
         of = open(save_file, 'r')
         seek_from = int(of.readline().strip())

    end = process_orders(file, output_file, start_from=seek_from)

    of = open(save_file, 'w')
    of.write(str(end))
    of.close()

def process_orders(file, output_file, total_rows = TOTAL_ROWS, start_from = 0):
    """
    Processes orders from file and saves data ready for blackscholes.simd.d in 
    output_file. Will process up to total_rows worth of data, and starts at
    line start_from
    Sends any data processed through UART
    """

    ref_file = "python_ref.txt"

    secondsPerYear = float(365*24*60*60)
    rows = 0
    r = .02676

    rf = open(ref_file, "w");

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
                call_put_mask = 0x00000000;
            else:
                call_put_mask = 0x00000001;

            option_id = option_id | call_put_mask;

            x = order.Order(float(price_opt), float(strike), r, float(iv), expiration_yrs, call_put, option_id)
            pkt = x.pkt()

            #this is the data sending code
            '''
            print("this is the packet MSB first: ")
            print(hex(int.from_bytes(pkt, byteorder='big')))
            '''
            pkt.reverse()
            '''
            print("this is the packet LSB first: ")
            print(hex(int.from_bytes(pkt, byteorder='big')))
            '''
            
            #send one byte at a time, stalling until keyboard input
            for b in pkt:
                wait()
                print("keyboard input acknowledged.")
                print(hex(b))
                b = bytes([b])
                data.send_uart_package(b)
                time.sleep(.5)
                data.read_back()

            s = x.s
            print(s)

            if rows == total_rows:
                break
        
    f.close()
    rf.close()  

    return 0


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
