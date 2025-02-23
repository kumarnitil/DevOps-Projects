#!/bin/bash
# we will be using return statement to return the value of the  function
# function to double the value of the input given by the user

double_value() {
	read -p "Enter a number " value
	echo "Doubling the input "
	return $(( value * 2 ))
}

double_value

echo "The new value is : $?"
