#!/bin/bash
echo "========== Display the basis system information =============="
echo "Memory usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
echo " Disk Usage: $(df -h / | awk 'NR==2 {print $5}')"

