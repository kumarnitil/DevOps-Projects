#!/bin/bash

greeting="Welcome Back"
user=$(whoami)
today=$(date)

echo "$greeting, $user! Today is $today."
echo "Your home directory is: $HOME"
# HOME is the environment variable being used here.
echo "Your current working directory is: $(pwd)"

