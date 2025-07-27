#!/bin/bash
echo "========== Display the basis system information =============="
echo "Memory usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
# This will take the output from free -h and grep the row having Mem and then display content from third and second row.
echo " Disk Usage: $(df -h / | awk 'NR==2 {print $5}')"
# Awk will go to the second row of the values and print the fifth column.
