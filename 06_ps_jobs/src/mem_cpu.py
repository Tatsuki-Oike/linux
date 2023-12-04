import time
import threading

desired_memory_mb = 100  # 100 MB
desired_cpu_percent = 50  # 50%

def maintain_memory_usage(target_memory_mb):
    data = [0] * (target_memory_mb * 1024 * 1024 // 4)
    while True:
        time.sleep(1)

def maintain_cpu_usage(target_percent):
    while True:
        for _ in range(1000000):
            result = 1 + 2
        time.sleep(1)

memory_thread = threading.Thread(target=maintain_memory_usage, args=(desired_memory_mb,))
cpu_thread = threading.Thread(target=maintain_cpu_usage, args=(desired_cpu_percent,))

memory_thread.start()
cpu_thread.start()
