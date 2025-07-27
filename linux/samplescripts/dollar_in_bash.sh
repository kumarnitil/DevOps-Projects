#!/bin/bash
# In Bash scripting, the special variable $? (dollar question mark) holds the exit status (or return value) of the last executed command
# 0 (Zero): Indicates the command executed successfully without any errors.
# Non-zero (1-255): Indicates that the command failed or encountered an error.
# $? has the limitation that it cannot return a value greater than 255 and hence we need to use echo statment more correctly to return values in a function.
ls /home
if [ $? -eq 0 ]; then
	echo "Command succeeded"
else
	echo "Command did not succeeded"
fi
