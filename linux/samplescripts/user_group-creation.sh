#!/bin/bash
# id -u is used in linux to print the effective user id of a user
# id command is used to display user and group information of the current user or the specified user
# -u option will restrict the output to give only the effective user id
# Check if the script is run as root
# the following statement will not execute the script unless it is executed as super user - basically use the command sudo
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

read -t 10 -n 5 -p "Enter the user name not more than 5 charcters" username1

echo "We will be adding the user now $username1"
sudo adduser $username1

echo "Enter the password for the $username1"
sudo passwd $username1

echo "Add the user: $username1 to the group $group"

sudo usermod -aG $group $username1

echo "The user $username1 has been added to the group $group"
