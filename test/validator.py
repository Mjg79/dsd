<<<<<<< HEAD
import sys
import os

if __name__ == "__main__":
    test_fail_flag = False
    for folder in os.listdir():
        if os.path.isfile(folder):
            continue
        output_c_path = os.path.join(folder, "output_c.txt")
        output_v_path = os.path.join(folder, "output_v.txt")
        if (not os.path.exists(output_c_path)) or (not os.path.exists(output_v_path)):
            print("{} does not match a test_file".format(folder))
            continue
        output_c = None
        output_v = None
        with open(file=output_c_path, mode="r") as co:
            with open(file=output_v_path, mode="r") as vo:
                output_c = co.readlines()
                output_v = vo.readlines()
        if len(output_c) != len(output_v):
            print("{} test failed".format(folder))
            test_fail_flag = True
            continue 
        for i in range(len(output_c)):
            if output_c[i] != output_v[i]:
                print("{}'th value in {} test failed".format(i + 1, folder))
            test_fail_flag = True
            continue 
    if test_fail_flag:
        print("Test Failed!")
    else:
        print("All tests have been passed successfully!")
=======
import sys
import os

if __name__ == "__main__":
    test_fail_flag = False
    for folder in os.listdir():
        if os.path.isfile(folder):
            continue
        output_c_path = os.path.join(folder, "output_c.txt")
        output_v_path = os.path.join(folder, "output_v.txt")
        if (not os.path.exists(output_c_path)) or (not os.path.exists(output_v_path)):
            print("{} does not match a test_file".format(folder))
            continue
        output_c = None
        output_v = None
        with open(file=output_c_path, mode="r") as co:
            with open(file=output_v_path, mode="r") as vo:
                output_c = co.readlines()
                output_v = vo.readlines()
        if len(output_c) != len(output_v):
            print("{} test failed".format(folder))
            test_fail_flag = True
            continue 
        for i in range(len(output_c)):
            if output_c[i] != output_v[i]:
                print("{}'th value in {} test failed".format(i + 1, folder))
            test_fail_flag = True
            continue 
    if test_fail_flag:
        print("Test Failed!")
		os.exit(1)
    else:
        print("All tests have been passed successfully!")
		os.exit(0)

>>>>>>> 9f4f585498d5962037e3ffa9f4e856d17ebe2c70
