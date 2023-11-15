#!/bin/bash
# Welcome message
echo "Welcome to the Command Line Learning Script!"
sleep 2
# Function to check user input
check_command() {
while true; do
read -p "$1" cmd
if eval "$cmd"; then
echo "Correct! Moving to the next command."
break
else
echo "That's not correct. Try again."
fi
done
}
# Introduce 'pwd' command
echo "Let's start with finding out our current directory."
echo "Type the command that prints the working directory."
check_command "Your command: "
# Introduce 'ls' command
echo "Now, let's list the contents of this directory."
echo "Type the command that lists the contents."
check_command "Your command: "
# Introduce 'cd' command
echo "Next, we'll change our current directory."
echo "Type the command to change directory to your home directory."
check_command "Your command: "
# Introduce 'cat' command
echo "Let's display the contents of a file."
echo "First, use 'ls' to find a file in this directory."
check_command "Your command: "
echo "Now, display the contents of a file using 'cat'."
check_command "Your command: "
# Completion message
echo "Congratulations! You've completed the basic command line
tutorial."
