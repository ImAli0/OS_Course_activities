# Log Analysis and File Archiving Script

This Bash script demonstrates how to work with system logs and archive/copy files in Ubuntu. It is divided into two main parts:

## Part 1: Analyzing and Storing Logs

### Step 1: View System Logs
This step displays the contents of the system logs located at `/var/log/syslog`.

### Step 2: Filter Logs for SSH Connections
This step filters the system logs for SSH (Secure Shell) connection-related entries and displays them.

### Step 3: Store Filtered Logs in a File
Here, the filtered SSH connection logs are stored in a file named `ssh_logs.txt`.

## Part 2: Archiving and Copying Files

### Step 1: Create Sample Files
Creates three sample text files: `file1.txt`, `file2.txt`, and `file3.txt`.

### Step 2: Archive Files with tar
Archives the sample files (`file1.txt`, `file2.txt`, and `file3.txt`) using the `tar` command, creating an archive named `my_archive.tar.gz`.

### Step 3: Copy the Archive to Home Directory
Copies the archive (`my_archive.tar.gz`) to the user's home directory.

### Step 4: Extract Files from the Archive
Extracts the files from the archive (`my_archive.tar.gz`) back into the current directory.

## Usage
1. Save the script in a file (e.g., `log_analysis_and_file_archiving.sh`).
2. Make the script executable using `chmod +x log_analysis_and_file_archiving.sh`.
3. Run the script with `./log_analysis_and_file_archiving.sh`.

Feel free to use and modify this script for your own purposes.

**Note:** Please be cautious when working with system logs and executing commands as they may require administrative privileges.

For more details, you can check the script itself.

