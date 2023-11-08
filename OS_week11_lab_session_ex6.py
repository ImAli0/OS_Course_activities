# Example 6: List mounted storage devices
def list_mounted_devices():
    # Run the 'mount' command with grep to list mounted storage devices and store the result
    command = "mount | grep '/dev/sd'"
    result = subprocess.run(command, shell = True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)
    
# Example 7: Check disk usage of a directory
def check_directory_disk_usage(directory):
    # Run the 'du' command to check disk usage of a directory and store the result
    command = f"du -sh {directory}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)
    
# Example 8: Create a new directory
def create_directory(directory):
    # Run the 'mkdir' command to create a new directory and store the result
    command = f"mkdir {directory}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)
    
# Example 9: Remove a directory (WARNING: Irreversible deletion)
def remove_directory(directory): 
    # Run the 'rm' command to remove a directory (use with caution, irreversible) and store the result
    command = f"sudo rm -r {directory}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)
    
# Example 10: Get storage device information
def get_device_info(device):
    # Run the 'udevadm' command to get information about a device and store the result
    command = f"udevadm info -q property -n {device}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)
    
# Main test part (Usage of the functions) 
if __name__ == "__main__":
    # Test each function with appropriate parameters
    list_storage_devices()
    check_disk_space("/dev/sda1")
    mount_device("/dev/sdb1", "/mnt/mydisk")
    # Be cautious with the following line, as it erases data on the device
    # format_device("/dev/sdc1", "ext4")
    unmount_device("/mnt/mydisk")
    list_mounted_devices()
    check_directory_disk_usage("/home/user/documents")
    create_directory("/tmp/new_directory")
    # Be cautious  with the following line, as it's an irreversible deletion
    # remove_directory("/tmp/new_directory")
    get_device_info("/dev/sda1")
    
