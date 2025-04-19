#!/bin/bash

greeting="Welcome Back"
user=$(whoami)
today=$(date)

echo "$greeting, $user! Today is $today."
echo "Your home directory is: $HOME"
echo "Your current working directory is: $(pwd)"

