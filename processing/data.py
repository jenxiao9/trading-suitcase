import serial
import binascii
import time
ser = serial.Serial(
    port="/dev/ttyUSB0",
    baudrate=115200,
    bytesize=serial.EIGHTBITS)

package = "" 

#creates the package to send to fpga
def closer():
  while ser.inWaiting()>0:
    ser.read()
  ser.flush()
  ser.close()
def create_package(option_id):
    global package 
    package = 15
    return hex(package)

def send_uart_package(package):
    global ser 
    for b in package:
        b=bytes([b])
        ser.write(b)
        #ser.flush()
        time.sleep(.005)
    ser.flush()
def read_back():
    global ser
    while ser.inWaiting()>0:
      return ser.read()
    return None

    # return None
    #(hex((int.from_bytes(ser.read(), byteorder ='big'))))

def main():
    global ser
    while ser.inWaiting()>0:
        print(int.from_bytes(ser.read(), byteorder = "big"))
    while True:
        ser.write(str.encode("he"))
        print (ser.read())
        time.sleep(.5) 

if __name__ == "__main__":
    main()