#!/bin/bash

# Breaking out of a for loop when the value equals to 5
# break statement is used to break out of the for loop.
# break can also be used inside a nested loop.
for var in {1..10}
do
	if [ $var -eq 5 ]; then
		break
	fi
	echo "Iteration number: $var"
done
echo "The loop has been completed.. "

