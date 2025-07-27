#!/bin/bashi
# until loop is also constructed like the while loop, just the difference is it will execute till the condition becomes true
var1=100
until [ $var1 -eq 0 ]
do 
	echo $var1
	var=$(( var1 - 25 ))
done
