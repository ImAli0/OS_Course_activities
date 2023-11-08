# Example 1: List available storage devices
import subprocess 

def list_storage_devices():
    command = "lsblk"
    result = subprocess.run(command, shell = True, stdout=subporcess.PIPE, text=True)
    print(result.stdout)
    
list_storage_devices()

