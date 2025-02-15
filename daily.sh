#!/bin/bash

#The daily.sh script is a simple Bash script that displays essential system information. 
#It helps users quickly check the current date, logged-in user, working directory, and a list of files in the current directory.

echo "Current date and time: $(date)"
echo "Current user: $(whoami)"
echo "Current directory: $(pwd)"
echo "List of files:"
ls -l

