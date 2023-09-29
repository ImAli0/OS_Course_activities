# Enhanced Server Health Checkup Script
This shell script is designed to perform a comprehensive health check on a server. It provides information on various aspects of server health, including running processes, CPU utilization, memory utilization, zombie processes, load average, and disk/SAN/NAS utilization.

## Features

### 1. Checking Running Processes

This section lists the top CPU-consuming processes and provides information about processes with names containing 'java', 'http', and 'mysql'.
### 2. Checking CPU Utilization

This section displays CPU utilization statistics, including critical processes, average CPU load, CPU information, top CPU-consuming users, and the CPU core count.
### 3. Checking Memory Utilization

This section covers memory-related checks, including freeing up cache, displaying free memory, swap usage, top memory-consuming processes, and available memory in megabytes.
### 4. Checking Zombie Processes

Here, the script identifies and handles zombie processes. It lists, kills, and provides information about zombie processes, their parent processes, and the users owning them.
### 5. Checking Load Average

This section reports the server's current load average, load average over the last 5 and 15 minutes, the number of currently running processes, and the number of users currently logged in.
### 6. Checking Disk/SAN/NAS Utilization

The script displays disk I/O statistics, disk usage, inode usage, mounted file systems, and disk partitions and sizes.

## Usage

To use this script, simply execute it in a terminal on the target server:

```bash
./enhanced_server_health_check.sh
```
## Running the Script

To execute the script, make it executable first:

```bash

chmod +x enhanced_server_health_check.sh
```
Then, run the script as described in the usage section.

## Disclaimer

This script provides valuable information about server health, but it should be used with caution. It may require root or administrative privileges for some checks.

Please review and customize the script according to your server's specific requirements and security policies.
