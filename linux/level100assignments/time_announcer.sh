#!/bin/bash
# Script to announce the time

time_announcer() {
	echo "Hello, Nitil the time is $(date)"
}

while [ 100 -gt 0 ]
do
	time_announcer
	sleep 60
done
