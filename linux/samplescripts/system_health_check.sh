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
# -n displays numerical addressess instead of trying to resolve hostnamesu.
# https://www.google.com/search?udm=50&aep=11&q=top+-bn&mtid=SJZ7aIOELcWTseMP76_WmQE&mstk=AUtExfBAaYVohSCiaZemoT8d79sE-lTs3zSlYaebk11n4WYp869W3VAVXB84JDTymiaTXFr97rebGehY0OpQVG0tfmmYsNtgLsdz99WdZCiFLfwnSo9hhYuSHxwSWzLKGEccbfxqKDno6uoqhaU2Gmyi-kkAc2Xq_1QSPAT3OfTe3Kx0fgPMiVdxDbdzB4HboCv1SEUFtiw9kavLw4KbuWGCw0QMm3XOqJHxZvY4N0sPLDSSo0ML3bMTTclIK9WUzQGl44cyhiZX7rwRQDGEvpnCf--9clXQgBGi0aV8n5wekF3RDhYVlISu7OGXXBQNHcLD2hpa4aOCRByIBQ&csuir=1
