#!/usr/bin/python3
import os
import sys
import time
import re
# from diff import py_diff as diff

RED = '\033[31m'
END = '\033[0m'

if len(sys.argv) == 4 or len(sys.argv) == 5:
    flag = 1
else:
    flag = 0

if len(sys.argv) == 5:
    clear = 1
else:
    clear = 0

#times = int(sys.argv[2])
try:
    times = int(sys.argv[2])
    cmd = str(sys.argv[1])
except:
    print(f"{os.path.basename(sys.argv[0])} [*cmd] [*number_of_executing] [time_ot_sleep (secend)]")
    
    exit()
if flag:
    sleep_time = int(sys.argv[3])
size = int(os.get_terminal_size()[0])

cmd = re.split(';|&&', cmd)
i = 1

while times:
    if not i == 1:
        print()
    print(f"[{i}]{'*' * (size - (2 + len(str(i))))}", end='')
    sys.stdout.flush()
    for x in cmd:
        out = os.popen(x).read()
        print (out)
    if i != 1 and s != out:
        print (f"{RED}ERROR:{END}")
        # res = diff(s, out)
        print('\n', res)
        exit(1)

    s = out
    if flag:
        time.sleep(sleep_time)
    if clear:
        os.system("clear")
    i += 1
    times = times - 1

print()
