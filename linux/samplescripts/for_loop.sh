#!/bin/bash
list="'Andhra' Kar MH Goa pan del" # Declare a list
list="$list GJ" # Appending an element to the list
echo "$list"
for state in $list
do 
	echo "The state name is $state"
#	sleep 4
done

#state=GJ
echo "The state name finally is $state" # The variable reassignment is happening here
list1=$list
echo "$list1"
for state in $list1
do
	echo " Let do a revist to the $state"
done
