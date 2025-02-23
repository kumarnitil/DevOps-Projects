#!/bin/bash
# The Shell script will differentiate between global and local variables
# By default all the variables are declared as global in bash
# We need to use the keyword local to make the variable as local.
# By default variables declared as global are available throughout the script

# Global vs Local Variables


# Demonstration of Global Variable

double_global() {
#value is a global variable whose value is altered inside the function
	value=$(( value * 2 ))
}

read -p "Enter a Value: " value
double_global
# The updated value of the global variable will be printed post the function call
echo " The doubled value of the global variable value is : $value"


#Demonstation of the local variable

# defining the global temp value is here
temp=10
local_compute() {
	local temp=$(( value + 5 )) # Defining the temp variable but with a local keyword
	result=$(( temp * 2 ))
}
local_compute
echo "The result is : $result"
if [ $temp -gt $value ]; then
	echo "Global temp is larger"
else
	echo "Global temp is smaller"
fi

