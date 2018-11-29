import serial
import binascii

package = "" 
#creates the package to send to fpga
def create_package(option_id):
    global package 
    package = 15
    return hex(package)

def send_uart_package(package):
    ser = serial.Serial(
    port="COM3",
    baudrate=9600,
    bytesize=serial.EIGHTBITS)

    print(ser.name)
    ser.write(package)
    s=ser.read(1)
    print(s)

def main():
    while True: 
        pack = create_package(1); 
        send_uart_package(pack) 

if __name__ == "__main__":
    main()









