# Example 2: Check available disk space on a specific storage device
import subprocess

def check_disk_space(device): 
    command = f"df -h {device}"
    result = subprocess.run(command, shell = True, stdout=subprocess.PIPE, text = True)
    print(result.stdout)

check_disk_space("/dev/sda1")
