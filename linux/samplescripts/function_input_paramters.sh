#!/bin/bash
# Write a function to add two numbers
# Test the function body on various input paramters
# $# keeps a count of how many paramters/arguments has been to command line or a function

add_number() {
	if [ $# -eq 0 ] || [ $# -gt 2 ]; then # condition to check if zero or more than two parameters are given
		echo -1
	elif [ $# -eq 1 ]; then
		echo $(( $1 + $1 ))
	else
                echo $(( $1 + $2 ))
	fi
}

# Asking the user to enter two numbers
#function call using two pararmeters
read -p "enter two numbers to add " num1 num2
result=$(add_number $num1 $num2)
echo "The sum is : $result"

# Asking the user to enter one numbers
#function call using one pararmeters
read -p "enter one numbers to add " num1
result=$(add_number $num1)
echo "The sum is : $result"

# Asking the user to enter no numbers
read -p "enter no numbers to add "
#function call using no pararmeters
read -p "enter one numbers to add " num1
result=$(add_number)
echo "The sum is : $result"

# Asking the user to enter three numbers
#function call using three pararmeters
read -p "enter one numbers to add " num1
read -p "enter three numbers to add " num1 num2 num3
result=$(add_number $num1 $num2 $num3)
echo "The sum is : $result"
