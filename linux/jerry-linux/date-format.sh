#!/bin/bash
# %F is used to express in full date format YYYY-MM-DD
# %T is used for time HH:MM:SS
# %Y is for year format YYYY
# %m is used month format
# %d is the day of the month
# %H is hour of the day 00-23
# %M is the minute 00-59
# %S is for second 00-59
# These formats can be combined as well $(date +%F_%T)

LOG_DIR="log_$(date +%F)"
echo "The directory for the log file is $LOG_DIR"
LOG_FILENAME="$LOG_DIR/Application.log"

echo "Creating a log directory $LOG_FILENAME"
if [ -d "$LOG_DIR" ]; then
	echo "the directory $LOG_DIR already exists"
else
	mkdir "$LOG_DIR"
fi
# Creating an empty log file
echo "Creating the Application log file with name $LOG_FILENAME"
if [ -f "$LOG_FILENAME" ]; then
	echo "The file already exists"
else
	touch "$LOG_FILENAME"
fi

# Write a header to the empty log file
echo ""
echo "Application log for the date: $(date +%F_%T)" >> "$LOG_FILENAME"

echo "--- Log File Content --- "
cat "$LOG_FILENAME"

