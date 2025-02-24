#!/bin/bash
# gwak: GNU version of the awk

# gawk {options] 'program' file

# -F : field separator  -F:
# -f read the awk program from a file
# -v var=value: define the variable with default value

# How it works

# Field Variables

# Giving $0 refer to the entire line
# $1, $2,..... $n would refer to the individual in the line

# We can either supply data to awk from a file or pipe it with another command.

# Sample awk commands

# gawk '{print $1}' data.txt - This will print the first field in each line

# We can also give the path of the file which we want to use as data

# Here in the next command we are also changing the field separator to : from  new line

#gawk can also be used to modify the commands on the fly

# echo "My name is Kumar character" | gawk '{$4=Nitil; print $0}'


