import time
import sys

seconds = 0

while True:
    print("Current seconds: {} seconds".format(seconds))
    seconds += 10
    sys.stdout.flush()
    time.sleep(10)
