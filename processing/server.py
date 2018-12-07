
# server.py from https://www.bogotobogo.com/python/python_network_programming_server_client_file_transfer.php
import socket                   # Import socket module
import subprocess
import os

port = 60000                    # Reserve a port for your service.
s = socket.socket()             # Create a socket object
host = socket.gethostname()     # Get local machine name
s.bind((host, port))            # Bind to the port
s.listen(5)                     # Now wait for client connection.
print(host)
print 'Server listening....'

while True:
    conn, addr = s.accept()     # Establish connection with client.
    print 'Got connection from', addr
    data = conn.recv(1024)
    print('Server received', repr(data))


    if data == "quit":
        conn.send('quitting')
        conn.close()
        s.close()
        break

    if "benchmark" in data:
        received = data.split(" ")   
        
        #expecting: benchmark <filenum>
        filenum = int(received[1])

        filename = "../../c_data_files/%05d_c_data.txt" % (filenum)

        output_file = "../../c_output_files/%05d_c_output.txt" % (filenum)

        cmd = "./simd 4 " + filename + " " +  output_file
        
        if os.path.isfile(filename):
            subprocess.call(cmd, shell=True)

            print("thank you for running benchmark %d" %(filenum))

            with open(output_file, 'r') as f:
                l = f.read(1024)
                while (l):
                    conn.send(l)
                    l = f.read(1024)

        s.shutdown(socket.SHUT_WR) 
        conn.close()


    print('Done sending')


