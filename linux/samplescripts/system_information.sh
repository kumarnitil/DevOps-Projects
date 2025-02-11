#!/bin/bash
# A Simple script to print system information
# This is also an example of Command Line Substitution
echo "System Information"
echo "======================"
echo "Hostname: $(hostname)" # Displays the hostname
echo "Hostname IP Address:wq: $(hostname -i)" # Displays the hostname IP Address"
echo "Current Date and Time: $(date)" # Displays the current Date
echo "System Uptime: $(uptime -p)" # Displays the system uptime
echo "Logged in Users: $(who)" # Displays the list of users logged into the system
