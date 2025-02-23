#!/bin/bash

great() {
	echo "This is a function call from within the iteration"
        
}

great1() {
	echo "This is a function call from outside the iteration"
        
}
count=1
while [ $count -le 5 ]; do
	great
	count=$(( count + 1 ))
done
echo " This is the end of the loop "
great1

