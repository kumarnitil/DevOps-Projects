#!/bin/bash
: 'Printing in a loop: When iterating through a loop and wanting to display the output of each iteration on a single line, -n is essential.
Building a string: You might use echo -n to build a string step-by-step, appending content as needed without introducing unnecessary newlines.
'
var1=10
while [ $var1 -gt 0 ] # -gt stands for greater than and -ge stands for greater than equal to 
do
	echo -n $var1 # Will 
	var1=$(( var1 -1 ))
done
echo $var1
while [ $var1 -lt 10 ] # -lt is for less than and -le stands for less than equal to
do
	echo -n $var1
	var1=$(( var1 +1 ))
done
