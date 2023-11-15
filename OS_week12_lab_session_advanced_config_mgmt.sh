#!/bin/bash
# Function to check if a command was successful
check_success() {
if [ $? -ne 0 ]; then
echo "An error occurred. Exiting..."
exit 1
fi
}
# Function to install a package if it's not already installed
install_package() {
echo "Checking for $1..."
if ! dpkg -l | grep -q "$1"; then
echo "Installing $1..."
sudo apt-get install -y $1
check_success
else
echo "$1 is already installed."
fi
}
# Setting up environment variables
setup_environment() {
echo "Setting up environment variables..."
export MY_ENV_VAR="MyValue"
echo "Environment variable MY_ENV_VAR set to $MY_ENV_VAR"
}
# Creating a new user (if not already exists)
create_user() {
local username=$1
echo "Creating a new user: $username"
if ! id "$username" &>/dev/null; then
sudo useradd -m -s /bin/bash "$username"
check_success
echo "User $username created."
else
echo "User $username already exists."
fi
}
# Advanced package management
advanced_package_management() {
echo "Adding a PPA and installing a package from it..."
sudo add-apt-repository ppa:deadsnakes/ppa -y
check_success
install_package python3.8
}
# Setting up a Python environment
setup_python_environment() {
echo "Setting up Python environment..."
sudo apt-get install -y python3-pip python3-venv
check_success
python3 -m venv myenv
source myenv/bin/activate
pip install numpy pandas
echo "Python environment set up with numpy and pandas installed."
}
# Main program
main() {
echo "Starting advanced configuration management script..."
sleep 2
# Update package list
echo "Updating package list..."
sudo apt-get update
check_success
setup_environment
create_user "newuser"
advanced_package_management
setup_python_environment
echo "Configuration management tasks completed."
}
main
