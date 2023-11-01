# Shell Script Class Activity

This is a simple shell script that demonstrates various filesystem operations and basic system commands. It's a great starting point for learning about shell scripting and the command line.

## Script Overview

The script performs the following tasks:

1. **Creating new files and folders:**
   - Creates an empty file named `sourcefile.txt`.
   - Renames the file from `myfile.txt` to `sourcefile.txt`.
   - Creates a new folder named `newfolder`.

2. **Navigating Filesystem:**
   - Navigates into the `newfolder` directory.
   - Displays the current working directory.
   - Navigates back to the parent directory.

3. **Viewing System Processes:**
   - Displays the top 5 lines of system processes using the `top` command.

4. **Disk Usage:**
   - Shows disk usage information using the `df` command with the `-h` flag.

5. **Ping for Network Connectivity:**
   - Pings `google.com` twice to check network connectivity.

6. **Cleanup:**
   - Removes the empty directory `newfolder`.
   - Cleans up by removing the `sourcefile.txt` file.

## Running the Script

To run the script, open a terminal and execute the following command:

```bash
./script.sh
