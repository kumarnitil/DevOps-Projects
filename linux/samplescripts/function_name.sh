#!/bin/bash
# The format to declare the function is just to declare the name and the body
# The function body needs to be defined before it is called, hence it will not be executed
great() {
	echo "This is a function call from within the iteration"
        
}

great1() {
	echo "This is a function call from outside the iteration"
        
}
great2(){
	echo "The funcion needs to be defined before it is called"
}
count=1
while [ $count -le 5 ]; do
	great
	count=$(( count + 1 ))
done
echo " This is the end of the loop "
great1
great2
: ' great2() {
	echo "Checking if the iteration order matter"
}
'
