import os
import sys
import math
import csv

#from math.isclose
def isclose(a, b, rel_tol):

    return abs(a-b) <= rel_tol * max([abs(a), abs(b)])

def accuracy_check(file1, file2, outputfile):
    '''
    Checks that the accuracy of two options based on option ids
    outputs to a file: option_id, (accurate/not), is the result within .001
    '''

    results = dict()

    print(file1)
    print(file2)
    c_file = open(file1, "r")
    # should have: option_id, price, timing - "%u, %.18f, %.18f\n"
    # parse out option_id and store prices
    c_reader = csv.reader(c_file, delimiter=",")
    for row in c_reader:
        if len(row) != 3:
            raise Exception('''Row in CSV does not have expected length. 
                Should have 3 items but only has %d''' %len(row))

        [option_id, price, timing] = row
        results[option_id] = [price]
    
    c_file.close()

    fpga_file = open(file2, 'r')
    fpga_reader = csv.reader(fpga_file, delimiter=",")
    for row in fpga_reader:
        if len(row) != 3:
            raise Exception('''Row in CSV does not have expected length. 
                Should have 3 items but only has %d''' %len(row))

        [option_id, price, timing] = row

        if option_id not in results:
            results[option_id] = price
        else:
            results[option_id].append(price)

    fpga_file.close()

    # iterate over option results 


    total_results = 0
    accurate_results = 0
    accuracy_file = open(outputfile, "w")
    for option in results:
        total_results += 1
        if (len(results[option]) != 2):
            is_close = False
            print("Didn't get both?")
        else:
            [c_res, fpga_res] = results[option]
            is_close = isclose(float(c_res), float(fpga_res), rel_tol = 1e-3)
            accurate_results += is_close

        accuracy_file.write("%s, %d\n" %(option, is_close))

    accuracy_file.close()
    print(float(accurate_results)/total_results)

if __name__ == "__main__":
    if len(sys.argv) < 4:
        raise Exception("""
           Please provide <c_result_file> <fpga_result_file> <outputfile>
            """)
    else:
        c_file = sys.argv[1]
        fpga_file = sys.argv[2]
        result_file = sys.argv[3]
        accuracy_check(c_file, fpga_file, result_file)
