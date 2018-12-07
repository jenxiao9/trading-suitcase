import sys
import time

if __name__ == "__main__":
    print(sys.argv[1])
    print(sys.argv[2])
    for i in range(10):
         print(sys.argv[1] + " " + str(i))
         time.sleep(1)
    
