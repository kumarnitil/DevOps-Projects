#!/bin/bash
file="states"
IFS=$'\n'
for state in $(cat "$file")
do
	echo "did you visit $state ? "
done
