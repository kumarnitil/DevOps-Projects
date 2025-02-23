#!/bin/bash
# The continue statement will help you the entire portion of the loop and continue with the next iteration,
# This can be used in the nested loop as well
# In this code the continue statement will help you skip from itetration 6 to 9
for ((var1 = 1; var1 < 15; var1++ ))
do
	if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]; then
		continue
	fi
	echo "The iteration number is: $var1"
done	
