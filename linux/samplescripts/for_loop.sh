#!/bin/bash
list="'Andhra' Kar MH Goa pan del"
list="$list GJ"
for state in $list
do 
	echo "The state name is $state"
	sleep 4
done

#state=GJ
echo "The state name finally is $state" # The variable reassignment is happening here:wq!

