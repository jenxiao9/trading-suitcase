import sys
import csv
import order
import datetime
import sys
import data
import os
import time 
import blackscholes
import struct

TOTAL_ROWS = 5

def raw_data(file, output_file, total_rows = TOTAL_ROWS):
    rows = 0
    with open(output_file, 'w') as output:
        with open(file, "r") as f:
            for row in f:
                output.write(row)
                rows +=1
                print(rows)
                if rows >= total_rows:
                    break

def bytes_to_float(b):
    f = struct.unpack('!f', b)
    return f[0]

def parse_fpga_data(fpga_packet):
    ''' Parses an fpga packet (should be of length 12 bytes) and returns a 
    string formatted like this: option_id, price, time
    where the first four bytes are assumed to be an unsigned int option_id
    the second four bytes are assumed to be a float of the output price
    the last four bytes are assumed to be a float of the time taken to calculate
    '''
    # should be 12 bytes: option_id, price, time_data
    option_id = int.from_bytes(fpga_packet[0:4], byteorder="big", signed=False)
    price = bytes_to_float(fpga_packet[4:8])
    time_taken = bytes_to_float(fpga_packet[8:12])

    str_rep = "%d, %f, %f" %(option_id, price, time_taken)
    return str_rep

def read_packet():
    bytes_read = 0
    read = []
    while (bytes_read < 12):
        x = data.read_back()
        if x is not None:
            read.append(x)
            bytes_read += 1
    read.reverse()
    return b''.join(read)


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
            
            if call_put == 'C':
                answer = blackscholes.callPrice(float(price_opt), float(strike), r, float(iv), expiration_yrs)
            else:
                call_price = blackscholes.callPrice(float(price_opt), float(strike), r, float(iv), expiration_yrs)
                answer = blackscholes.put_price(float(price_opt), call_price, float(strike), r, expiration_yrs)
            
            
            '''
            print(pkt)
            print("pre-encoding, is len %d" %(len(pkt)))

            '''

            #this is the data sending code
            
            print("this is the packet MSB first: ")
            print(hex(int.from_bytes(pkt, byteorder='big')))
            pkt.reverse()
            print("this is the packet LSB first: ")
            print(hex(int.from_bytes(pkt, byteorder='big')))
            

            data.send_uart_package(pkt)
            time.sleep(1)
            '''
            fpga_out = read_packet()
            fpga_out_str = parse_fpga_data(fpga_out)
            '''
            s = x.s
            print(s,end='')
            print("The answer is: %f\n" %(answer))

            output.write(s)




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
            if len(sys.argv) == 5:
                total_rows = int(sys.argv[4])
                process_orders(orig_file, result_file, total_rows = total_rows)
            else:
                process_orders(orig_file, result_file)
        elif sys.argv[1] in "raw":
            if len(sys.argv) == 5:
                total_rows = int(sys.argv[4])
                raw_data(orig_file, result_file, total_rows)
            else:
                raw_data(orig_file, result_file)
