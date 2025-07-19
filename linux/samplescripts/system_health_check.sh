#!/bin/bash
# System Health Check Script
# Testing git push
echo "CPU and Memory Usage"
top -bn1 | head -5
echo "Disk Usage"
df -h
echo "Active Network Connections:"
netstat -tuln
