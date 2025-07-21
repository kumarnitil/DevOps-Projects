#!/bin/bash
# we will be using echo statement to return the value of the  function
# echo statements can be used again to return value from the fucntion
# we just need to make sure there is a variable to which that value will be assigned
# function to double the value of the input given by the user

double_value() {
	# echo "Enter a value which you want to double"
	read -p "Enter a number " value
	# echo "Doubling the input" - Commenting this out as this may return the value along with what we need
	# value=$(( value * 2 ))
	echo $(( value * 2 ))
}
echo "Enter the value you want to double"
result=$(double_value)
# Here we use a varibale instead to receive the returned value instead of $? so that it can hold a value greater than 255.
echo "The new value is : $result"
