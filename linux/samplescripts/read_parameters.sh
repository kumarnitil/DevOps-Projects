#!/bin/bash
: ' 1. The Script will be accepting vault password from the user.
  2. The the user input for the password should be masked.
  3. The input should time out after 10 seconds if no input has been given.
  4. Informs the user that it can enter a maximum of 5 Characters
'


read -t 10 -n 5 -p "Enter the username with max 5 characters and before 10 seconds: " name

: ' -t is for timeout
  -n is for limiting for the character
  -p is the prompt for the user
'

read -t 10 -s -p "Enter the vault password: " password # -s is for masking the input

echo "##################################################################################"
echo # For a new line enter only echo
echo "The passwords has been received and masked for security reasons"

