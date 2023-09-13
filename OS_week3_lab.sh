#!/bin/sh

echo " ### Creating new files and folders ### "

# Create an empty file
touch myfile.txt
echo "Created an empty file myfile.txt"

# Rename the file
mv myfile.txt sourcefile.txt
echo "Renamed myfile.txt to sourcefile.txt"

mkdir newfolder
echo "Created a new folder newfolder"

echo "### Navigating Filesystem ###"

# Navigate into the new folder
cd newfolder
echo "Navigated into newfolder"

# Display the current working directory
pwd
echo "Displayed the current working directory"

# Navigate back to the parent directory
cd ..
echo "Navigated back to the parent directory"

# Viewing System Processes
echo "Displaying top 5 lines of system processes:"
top -n 1 | head -n 5

# Disk Usage
echo "Showing Disk Usage:"
df -h

# Ping for Network Connectivity (only 2 packets for demonstration)
echo "Ping google.com:"
ping -c 2 google.com

# Remove the empty directory
rmdir newfolder

# Cleanup
rm sourcefile.txt

echo "Cleaned up created files"

echo "### Script Execution Complete ###"
