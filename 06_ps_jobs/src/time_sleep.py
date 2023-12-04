import time

seconds = 0

while True:
    print("Current seconds: {} seconds".format(seconds))
    seconds += 10
    time.sleep(10)
