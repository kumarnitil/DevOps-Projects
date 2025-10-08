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

# In Bash scripting -r option is used with read command and it means "Raw Input without backslashes"
# read -r LINE - this piece of code reas one line from standard input into the variable without interpreting the backslahesh.
# In Bash Scripting, the '<' symbol is called input redirection. It tells the shell to take input from a file or stream instead of standard input
# The < file.txt will feed the file's contents into the while loop. Each iteration reads one line into LINE. Without < file.txt the script will wait for manual input.

echo "Add an additional line to the notes file" >> "$FILENAME"
echo "File has been updated with an additional line"

# ---- Read the contents of the file Line by Line ----
echo "" # Print a blank line for spacing.

echo "Reading contents from the file $FILENAME"

LINE_NUMBER=1
while read -r LINE; do
	echo "Line_number:$LINE_NUMBER: $LINE"
	((LINE_NUMBER++))
done < "$FILENAME"
echo "---- End of file ----"

echo ""

echo "Script has been completed"



