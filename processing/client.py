
# client.py from https://www.bogotobogo.com/python/python_network_programming_server_client_file_transfer.php

import socket                   # Import socket module
import os
import sys

def connect_to_socket():
    s = socket.socket()             # Create a socket object
    host = 'spiral-x86-64-node031.andrew.cmu.edu'     # Get local machine name
    port = 60000                    # Reserve a port for your service.
    s.connect((host, port))
    print("connected")
    return s

def close_socket(s):
    s.send(bytes('quit'.encode('utf-8')))
    s.close()
    print('connection closed')

def run_benchmark_num(s, i):
    if type(i) == int:
        cmd = "benchmark %d" %i
    else:
        cmd = "benchmark %s" %i

    s.send(bytes(cmd.encode('utf-8')))

    c_dir = os.path.join("..", "..", "c_results")

    if not os.path.isdir(c_dir):
        os.mkdir(c_dir)

    file_name = "../../c_results/%05d_c_output.txt" %int(i)

    with open(file_name, "w") as f:
        data = s.recv(1024)
        while not data:
            data = s.recv(1024)

        f.write(data.decode("utf-8"))
        data = s.recv(1024)
        while data:
            if not data:
                break
            if data.decode('utf-8') == "done_file":
                break
            f.write(data.decode("utf-8"))
            data = s.recv(1024)

    print("closing")
    s.close()

# receive?

if __name__ == "__main__":
    if len(sys.argv) > 1:
        i = sys.argv[1]
        s = connect_to_socket()
        if i == "quit":
            close_socket(s)
        else:
            run_benchmark_num(s, i)
    else:
        print("Use: client.py <benchmark_num>, or client.py quit if you want to close server")
