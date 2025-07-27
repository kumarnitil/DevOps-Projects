#!/bin/bash
echo "The hostname is $(hostname)"
echo "The Kernel is $(uname -r)" # uname -r will give the release version of the Kernel
echo "The system has been up for $(uptime -p)"
echo "The home directory of the system is $HOME"
