#!/bin/bash

# Get a file name from the user
echo "Enter the filename you want to work with:"
read Filename
# Ask the user if they want to write, read or append
echo "Do you want to (w) write, (a) append or (r) read the file?"
read Action

if [ "$Action" == "w" ]; then
	echo "Enter some text to write to the file(It will overwrite the existing text):"
	read Content
	echo "$Content" > "$Filename"
	echo "Content has been written to the $Filename"
elif [ "$Action" == "a" ]; then
	echo "Enter some text to append to the file"
	read Content
	echo "$Content" >> "$Filename"
	echo "Content has been appended to $Filename"
elif [ "$Action" == "r" ]; then
	echo "--- Contents of the $Filename"
	cat "$Filename"
	echo "-----------------------------"
else
	echo "Invalid option selected"
fi
