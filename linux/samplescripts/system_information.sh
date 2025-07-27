#!/bin/bash
# A Simple script to print system information
# This is also an example of Command Line Substitution
echo "System Information"
echo "======================"
echo "Hostname: $(hostname)" # Displays the hostname
echo "Hostname IP Address:wq: $(hostname -i)" # Displays the hostname IP Address"
echo "Current Date and Time: $(date)" # Displays the current Date
echo "System Uptime: $(uptime -p)" # Displays the system uptime and -p provides the uptime in human readable format.
echo "Logged in Users: $(who)" # Displays the list of users logged into the system
echo -e "The infromation about the cpu is \n $(lscpu)" #Displays information about the CPU and processing units, including architecture, number of cores, sockets, clock speed, and cache size.
echo -e "The memory usage is listed below \n $(free -h)"
:'https://www.google.com/search?udm=50&aep=11&q=uptime+-p&mstk=AUtExfDV3U_QbBZoZOvj63cUKvFrS5PqYQPldFjDlIb6qi5ziX8x2XxVAu5FkCVrFJjp-6kEDw0s_BfddD0jq3McOoH8alAOc8HXEOE9wO6_AzhydgOunQ8C54KoqY-hikqJkXTaQ916udThjorzND5NpW071qMPdzKSEFjGjnUPAq9ua1xWHd26zi0u76sHHTsZcuR2hR2IMYA7XZxzhKcJu_XdEZv1sR9AItCOkGlDDLfa34IItUPB6BGN46eOkgVUO9YofZcxxdy1wZl4jVtsnrl2ibEdYVs5ahI&csuir=1&mtid=D4l8aMqTKa6NnesPupCH0AU&atvm=1
'
