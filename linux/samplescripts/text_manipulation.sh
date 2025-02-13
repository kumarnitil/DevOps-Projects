#!/bin/bash
read -p "Enter your name :" name
echo "Hello Mr. $name"
echo "Hello Mr. ${name:0:5}" # Will print only first five characters
echo "Hello Mr. ${name/Nitil/Kumar}" # Will replace with Kumar
echo "Hello Mr. ${name,,}" #Converts to lower case
echo "Hello Mr. ${name^^}" #Convers to Upper Case
