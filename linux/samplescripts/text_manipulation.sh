#!/bin/bash
# This has been completed
read -p "Enter your name :" name
echo "Hello Mr. $name"
echo "Hello Mr. ${name:0:5}" # Will print only first five characters
echo "Hello Mr. ${name//Nitil/Kumar}" # Will replace with Kumar
echo "Hello Mr. ${name,,}" #Converts to lower case
echo "Hello Mr. ${name^^}" #Convers to Upper Case
read -p "Enter your biwi ka name :" biwikaname
echo "Hello, Maidam Home Minister $biwikaname"
echo "Hello, Mrs. ${biwikaname:0:9}" # Will print only first 9 Characters, please see the space in the name will be considered as a character
echo "Hello Maidam Home Minister ${biwikaname//Rajnandini/Gudiya}" #Will replace a central word in the biwikaname with another"
echo "Hello Maidam Home Minister ${biwikaname,,}" # Will print the name in the lower case
echo "Hello Maidam Home Minister ${biwikaname^^}" # Will print the name in the upper case
