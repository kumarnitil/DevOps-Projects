#!/bin/bash
# System Health Check Script
# Testing git push
echo "CPU and Memory Usage"
top -bn1 | head -5
# top command will give a real time input of the running processes and system usage
# -b runs the top command in batch mode
# -n - number of iteration tops should produce before exiting.
echo "Disk Usage"
df -h
# df stands for disk free and gives information about disk space usage
# -h converts the format into human readable and is a short form for human readable
echo "Active Network Connections:"
netstat -tuln
# netstat is used to display network information, routing tables
# -t displays the TCP Connections
# -u Shows only UDP Connections
# -l Lists only listening port
# -n displays numerical addressess instead of trying to resolve hostnames.
