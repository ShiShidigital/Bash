#!/usr/bin/bash
# I want to create useful lists with the ls command for me
# Shira 5/5/23

echo "Following stuff is from Script: $0"

echo
current_directory=$(pwd)
if [ $1 ]
then
    current_directory=$1
fi

echo "Showing List of files in following directory:"
echo $current_directory
echo
echo "$(ls -hot -1 --time-style=+%H:%M-%D $current_directory)"
# -l > long listing format 
# -A > lists all files except . and .. 
# -G > don't print group names in list 
# -h > human readable sizes 
# -o > instead of -l, do not list group information
# -t > sort by modification time, newest first
echo
