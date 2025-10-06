#!/bin/bash
# Get the file name from the user
echo "Enter a File name:"
read Filename

# Get the content from the user
echo "Enter some text to be written in the file"
read Content

#Add the content mentioned by the user to the file
echo "$Content" > "$Filename"

echo "Content has been written to $Filename"

