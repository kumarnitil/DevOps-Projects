#!/bin/bash
read -p "Enter your name :" name
echo "Hello Mr. $name"
echo "Hello Mr. ${name:0:5}"
echo "Hello Mr. ${name/Nitil/Kumar}"
echo "Hello Mr. ${name,,}" #Converts to lower case
echo "Hello Mr. ${name^^}" #Convers to Upper Case
