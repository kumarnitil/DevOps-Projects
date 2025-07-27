#!/bin/bash
declare -i num=50 #declaring an integer
printf "%d\n" $num # printing an integer
printf "%f\n" $num #printing a decimal
declare -a fruits=("Apple" "Banana" "grapes") # will only print the first element
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
echo $num2 # We can also use the echo to print the value

declare -i non_numeric="abc"
echo "$non_numeric" # Output: 0

# An array can be declared using -a
declare -a array1=("Ranchi" "Bolpur" "Kolkata" "Bangalore" "Pune")
printf "%s\n" $array1
echo $array1 # Will print only the first element

# Declare an assosciative array (maps or dictionaries) using - A
declare -A my_assoc_array
my_assoc_array[name]="Nitil"
my_assoc_array[age]=25
echo "${my_assoc_array[name]}" # Output: John

# Using -r or readonly keyword to declare read only or immutable variables.
declare -r daughter="TUKKU"
# daughter="TUKKUU" - Will through a read only error"
echo $daughter
: ' https://www.google.com/search?udm=50&aep=11&q=top+-bn&mtid=SJZ7aIOELcWTseMP76_WmQE&mstk=AUtExfDx4u-atbb9dmBMXSBpbIHENYjJlOJaXBKFjwUiZk4Pr2kT-Y2wE9Bzj6d02nMuza7lEpU5WfImHoDKTqrYZwbRV0gsQmq-El4XDGFtK_PjFmKQw0_-Ibsv3BJSFz3IQhV0jPfMVKANt5jeZlv9O33vsJRlY8iczslCesdXQzYrfvnhrwU86IuOvaqq25qZWYm-CPusJFRn-Gp--Basy05WLCVqYykoOyYmKktPPnIcYy-6DmyILigjTWhF85Dx_BA7llpCBzAABwSl4_Jhf-743fcK4L99fXE1fgCWhoj7_sZyifjeU547sDBzBDdmOG8fSv6dewCvuw&csuir=1'
