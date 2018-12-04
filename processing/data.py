import serial
import binascii
import time
ser = serial.Serial(
    port="COM4",
    baudrate=115200,
    bytesize=serial.EIGHTBITS)

package = "" 

#creates the package to send to fpga
def create_package(option_id):
    global package 
    package = 15
    return hex(package)

def send_uart_package(package):
    global ser 
    ser.write(package)

def read_back():
    global ser
    while ser.inWaiting()>0:
        print(bin((int.from_bytes(ser.read(), byteorder ='big'))))

def main():
    global ser
    while ser.inWaiting()>0:
        print(int.from_bytes(ser.read(), byteorder = "big"))
    while True:
        ser.write(str.encode("he"))
        print (ser.read())
        time.sleep(.5) 
        #pack = create_package(1); 
        #send_uart_package(pack) 

if __name__ == "__main__":
    main()
