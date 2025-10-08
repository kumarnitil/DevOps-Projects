#!/bin/bash
# Get the directory name from the user
read -p "Enter the name of the directory: " DIR_NAME

# --- Check if the directory exists ---
# [ -d .... ] will check if the directory exists or not

if [ -d "$DIR_NAME" ]; then
	echo " The directory $DIR_NAME already exists"
else
	echo " The directoy $DIR_NAME does not exists and will be creating it"
	mkdir "$DIR_NAME"
	echo "$DIR_NAME has been created"
fi

# --- Check if the file exists or not -----
# [ -f ... ] will check if a regular file exists or not

#Defile the filename and the path
FILENAME="$DIR_NAME/notes.txt"

if [ -f "$FILENAME" ]; then
	echo " The file $FILENAME already exists. Appending a new log entry"
	echo "Adding a new entry for $(date)" >> "$FILENAME"
else
	echo "The file $FILENAME was not found and creating it"
	echo "---- Starting the log entry ----" > "$FILENAME"
fi



