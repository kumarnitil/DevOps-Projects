#!/bin/bash



#Display a prompt and the user input, store the input into a variable

read -p "Please enter your name: " name
#-p is for the prompt where you as the user what to do
echo "What is in a name $name "
#How to add character limit
#Inform the user that you can enter a maximum of 5 characters
echo "The username can be maximum 5 Chars"
read -n 5 -p "Please enter your name: " name1
echo "$name1"

#Asking user to enter his vault password
read -t 10 -s -p "Enter your vault password: " password
echo "Your password has been received"

echo "################################################################################################"


