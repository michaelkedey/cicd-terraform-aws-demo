#!bin/bash
#Author: michael_kedey
#Date Created: 05/10/2023
#Last Modified: 05/10/2023
#Purpose of Script: Install Apache2 and change ssh port, and add ssh key

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2

echo '<h1>Congrats! you have installed apache</h1>' > var/www/html/index.html

# Change the SSH port to 233
sudo sed -i 's/Port 22/Port 233/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# my public key (not recommended)
# Check if the .ssh directory exists in the user's home directory
# if [ ! -d ~/.ssh ]; then
#   mkdir ~/.ssh
#   chmod 700 ~/.ssh
# fi

# # Append the public key to the authorized_keys file
# echo $demo_key >> ~/.ssh/authorized_keys/
# chmod 600 ~/.ssh/authorized_keys
