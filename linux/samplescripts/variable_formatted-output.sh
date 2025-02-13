#!/bin/bash
declare -i num=50 #declaring an integer
printf "%d\n" $num # printing an integer
printf "%f\n" $num #printing a decimal
declare -a fruits=("Apple" "Banana" "grapes")
printf "%s\n" $fruits
# Declaring read only variables
readonly NAME="Nitil" # will make the variable NAME as immutable
declare -r NAME1="Nitil" # We can declare immutable variable with the keyword r as well

