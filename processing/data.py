import serial
import binascii
import time

def open_port(port = "COM6"):
    ser = serial.Serial(
    port=port,
    baudrate=115200,
    bytesize=serial.EIGHTBITS)

    return ser

package = "" 

#creates the package to send to fpga
def closer(ser):
  while ser.inWaiting()>0:
    ser.read()
  ser.flush()
  ser.close()

def create_package(ser, option_id):
    global package 
    package = 15
    return hex(package)

def send_uart_package(ser, package):
    for b in package:
        b=bytes([b])
        ser.write(b)
        time.sleep(.001)
    ser.flush()

def read_back(ser):
    while ser.inWaiting()>0:
      return ser.read()
    return None

    # return None
    #(hex((int.from_bytes(ser.read(), byteorder ='big'))))

def main(ser):
    while ser.inWaiting()>0:
        print(int.from_bytes(ser.read(), byteorder = "big"))
    while True:
        ser.write(str.encode("he"))
        print (ser.read())
        time.sleep(.5) 

if __name__ == "__main__":
    main()
