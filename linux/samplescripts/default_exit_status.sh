#!/bin/bash
# The default exit code for a successful command execution is 0
# If the command is unsuccesful then the exit status will be zero
# The exit status of the last command executed can be printed through $?
# when the file does not exist we will get a non zero exit value in return
# When the file exist we will get the return value as 0
# This has also been covered
func_status() {
	echo " Trying to list a non-existent file"
	ls -lrt doesnotexist 
}


func_status

echo "The exit status is : $?"
