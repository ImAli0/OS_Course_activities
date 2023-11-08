# Example 3: Mount a storage device
import subprocess

def mount_device(device, mount_point):
    command = f"sudo mount {device} {mount_point}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text = True)
    print(result.stdout)
    
mount_device("/dev/sdb1", "/mnt/mydisk")
