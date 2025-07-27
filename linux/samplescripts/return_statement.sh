#!/bin/bash
# we will be using return statement to return the value of the  function
# function to double the value of the input given by the user
# When performing arithmetic operations, Bash implicitly attempts to convert strings containing numbers to integers
# Bash variables are inherently strings, so converting an integer to a string is straightforward as they are both internally represented as strings
double_value() {
	read -p "Enter a number " value
	echo "Doubling the input "
	return $(( value * 2 ))
}

triple_value() {
	read -p "Enter a number to triple its value " value_n
	echo "Tripling its value"
	return $(( value_n * 3 ))
}

double_value

echo " The new doubled value is $?"

triple_value

echo "The new value is : $?"
