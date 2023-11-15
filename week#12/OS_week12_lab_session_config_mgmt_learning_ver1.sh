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
# Welcome message
echo "Welcome to the Configuration Management Learning Script!"
sleep 2
# Update package list
echo "Updating package list..."
sudo apt-get update
check_success
# Install Apache Web Server
install_package apache2
# Enable and start Apache service
echo "Enabling and starting Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2
check_success
# Create a sample web page
echo "Creating a sample web page..."
echo "<html><body><h1>Hello from $(hostname)</h1></body></html>" |
sudo tee /var/www/html/index.html
check_success
# Completion message
echo "Configuration complete. Visit http://$(hostname -I | awk '{print
$1}') in your browser."
