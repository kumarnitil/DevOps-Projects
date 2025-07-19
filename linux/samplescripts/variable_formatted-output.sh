#!/bin/bash
declare -i num=50 #declaring an integer
printf "%d\n" $num # printing an integer
printf "%f\n" $num #printing a decimal
declare -a fruits=("Apple" "Banana" "grapes")
printf "%s\n" $fruits
# Declaring read only variables
readonly NAME="Nitil" # will make the variable NAME as immutable
declare -r NAME1="Nitil" # We can declare immutable variable with the keyword r as well

# Second saet of variable declaration.
: 'Variables in Bash are primarily treated as strings by default
Thus they need to be converted into various other data types or
declared as various other data types
- String can be declared with or without quotes but using the quotes is recommended for strings containing spaces.
'
# -i is used to declare a variable as an integer
declare -i num2=60
printf "%d\n" $num2
