#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
	echo "The script must be run as root"
	exit 1
fi

#Prompt user to enter username
read -p "Enter the username to create:" username

#Create the user
sudo adduser $username

# Set the password for the user
echo "Enter the password for the user: "
sudo passwd $username

# Prompt the user to enter the group name to which user will be assigned to
read -p "Enter the group to which user $username will be assigned to : " group

#Creating the group
echo "Creating the group $group"
sudo groupadd $group

#Add the user created to the group
sudo usermod -aG $group $username
echo "$username has been added to $group."

echo "User $usernamae has been created and assigned to the group $group"
