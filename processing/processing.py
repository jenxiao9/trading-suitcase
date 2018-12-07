import sys
from hashlib import sha256
import csv
import order
import datetime
import sys
import data
import os
import time 
import blackscholes
import struct

TOTAL_ROWS = 1000

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

def read_packet(ser):
    bytes_read = 0
    read = []
    print(ser.inWaiting())
    while (bytes_read < 24):
        x = data.read_back(ser)
        print(x)
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

def process_orders(file, output_file, total_rows = TOTAL_ROWS, start_from = 0, files = 0):
    """
    Processes orders from file and saves data ready for blackscholes.simd.d in 
    output_file. Will process up to total_rows worth of data, and starts at
    line start_from
    Sends any data processed through UART
    """
    secondsPerYear = float(365*24*60*60)
    rows = 0
    r = .02676
    f = open(file, "r")


    eof = False

    py_dir = os.path.join("..", "..", "python_ref")
    oil_dir = os.path.join("..", "..", "oil")
    cd_dir = os.path.join("..", "..", "c_data_files")

    if not os.path.isdir(py_dir):
        os.mkdir(py_dir)
    if not os.path.isdir(oil_dir):
        os.mkdir(oil_dir)
    if not os.path.isdir(cd_dir):
        os.mkdir(cd_dir)

    while not eof:
        print("working on file %d" %files)
        file_num = str(files).zfill(5)

        ref_file = os.path.join(py_dir,"%s_python_ref.txt" %(file_num))
        rf = open(ref_file, "w");
        option_id_list = os.path.join(oil_dir, "%s_id_list.txt" %(file_num))
        oil = open(option_id_list, "w")
        output_file = os.path.join(cd_dir, "%s_c_data.txt" %(file_num))
        output = open(output_file, 'w')

        #necessary for the benchmark files
        output.write("%d\n" %(total_rows))

        while (total_rows > rows):

            line = f.readline()
            if not line:
                eof = True
                print("oh no")
                break

            [t_date, stock_id, stock_symbol, expiry, strike, call_put, style, symbol, 
            price_bid, price_ask, date_bid, date_ask, size_bid, 
            size_ask, exchange_bid, exchange_ask, volume, iv, price_opt,delta, 
            gamma, theta, vega, rho, pre_iv, implied_yield, dump_time, calc_date] = line.split(",")
        
            # we should figure out what to do with stock / option id 
            expiry = expiry + " 17:00:00" #to add the expiration time
            expiration_dt = datetime.datetime.strptime(expiry, "%Y-%m-%d %H:%M:%S")
            calc_dt = datetime.datetime.strptime(calc_date.strip(), "%Y-%m-%d %H:%M:%S")

            expiration_time = expiration_dt - calc_dt
            expiration_yrs = expiration_time.seconds / (secondsPerYear)
            h = sha256()
            g = symbol.encode('utf-8')
            h.update(g)
            option_id = h.hexdigest()
            option_id = int(option_id, 16)

            option_id = option_id & 0xfffffffe #convert to 32 bit

            if call_put == 'C':
                call_put_mask = 0x00000000;
            else:
                call_put_mask = 0x00000001;

            option_id = option_id | call_put_mask;

            x = order.Order(float(price_opt), float(strike), r, float(iv), expiration_yrs, call_put, option_id)
            pkt = x.pkt()
            
            try:
                if call_put == 'C':
                    answer = blackscholes.callPrice(float(price_opt), float(strike), r, float(iv), expiration_yrs)
                else:
                    call_price = blackscholes.callPrice(float(price_opt), float(strike), r, float(iv), expiration_yrs)
                    answer = blackscholes.put_price(float(price_opt), call_price, float(strike), r, expiration_yrs)
            except:
                answer = 0

            ref_str = "%u, %f, %i\r\n" %(option_id, answer, 0)
            rf.write(ref_str)

            oil_str = "%u, %s, %s, %s, %s, %s\r\n" %(option_id, stock_symbol, expiry, strike, call_put, t_date)
            oil.write(oil_str)

            s = x.s
            output.write(s)
            rows += 1
        files += 1
        oil.close()
        rf.close()  
        output.close()
        rows = 0

    f.close()
    return 0

def uart_data_send(file, port = "COM6", total_packets = 60):
    f = open(file, "r")
    
    ser = data.open_port(port)
    i = 0

    for line in f.readlines():


        line = line.strip()
        #skip first line
        if(line == "1000"):
            continue
        #hacky hardcoded removing the unnecessary punctuation
        line = line[1:-2]
        [option_id, price_opt, strike, r, iv, expiration_yrs, call_put] = line.split(",")
        option_id = int(option_id)
        price_opt = float(price_opt)
        strike = float(strike)
        r = float(r)
        iv = float(iv)
        expiration_yrs = float(expiration_yrs)
        x = order.Order((price_opt), (strike), r, (iv), expiration_yrs, call_put, option_id)


        try:
            if call_put == 'C':
                answer = blackscholes.callPrice(float(price_opt), float(strike), r, float(iv), expiration_yrs)
            else:
                call_price = blackscholes.callPrice(float(price_opt), float(strike), r, float(iv), expiration_yrs)
                answer = blackscholes.put_price(float(price_opt), call_price, float(strike), r, expiration_yrs)
        except:
            answer = 0

        print(blackscholes.float_to_hex(answer))

        pkt = x.pkt()
        pkt.reverse()

        data.send_uart_package(ser,pkt)
        i+=1
        if i >= total_packets:
            break

    packets = []
    packets_read = 0
    print("done sending")
    while (packets_read < total_packets):
        time.sleep(.05)
        print(ser.inWaiting())
        x = read_packet(ser)
        packets.append(x)
        print(parse_fpga_data(x))
        packets_read += 1


    f.close()




if __name__ == "__main__":
    if len(sys.argv) < 3:
        raise Exception("""
            Use case: For making a new, shorter raw file: processing.py raw input_file output_file total_rows
            For processing code: processing.py processing input_file output_file
            For sending: processing.py send filenum portname
            """)
    else:

        if sys.argv[1] == "process":
            if len(sys.argv) == 5:
                orig_file = sys.argv[2]
                result_file = sys.argv[3]

                total_rows = int(sys.argv[4])
                process_orders(orig_file, result_file, total_rows = total_rows)
            else:
                process_orders(orig_file, result_file)
        elif sys.argv[1] == "raw":

            if len(sys.argv) == 5:
                orig_file = sys.argv[2]
                result_file = sys.argv[3]
                files = int(sys.argv[4])
                raw_data(orig_file, result_file, files = files)
            else:
                orig_file = sys.argv[2]
                result_file = sys.argv[3]
                raw_data(orig_file, result_file)
        elif sys.argv[1] == "send":
            i = int(sys.argv[2])
            file = os.path.join("C:/Users/Xinna", "c_data_files" , "%05d_c_data.txt" %(i))

            if len(sys.argv) >3:
                port = sys.argv[3]
                uart_data_send(file, port)
            else:
                uart_data_send(file)

