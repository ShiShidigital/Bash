#!/usr/bin/bash
# A script that gives me a report about a given directory.
# Shira 7/5/2023

# Set current working directory as default
ordner=$(pwd)
#Get the directory to report about (agrument $1)
if [ $1 ]
then
    ordner=$1
fi
echo "Report about directory: $ordner"
echo

# Get a list of all files in the directory.
ordner_files=$(ls -l $ordner | egrep '^..........')
echo "List of files of this directory:"
echo "$ordner_files"
echo

# Get the number of files in the directory.
number_of_files=$(ls -l $ordner | egrep '^[^dt].........' | wc -l)
echo "There are $number_of_files files in this directory."
echo

# Get the number of directories
number_of_directories=$(ls -l $ordner | egrep '^d.........' | wc -l)
echo "There are $number_of_directories directories in this directory."
echo
