#!/usr/bin/bash
# A script that gives me a report about a given directory.
# Shira 7/5/2023

echo "Following stuff is from Script: $0"
echo
# Set current working directory as default
ordner=$(pwd)
#Get the directory to report about (agrument $1)
if [ $1 ]
then
    ordner=$1
fi
echo "Report about directory: $ordner"
echo

# Get the number of files in the directory.
number_of_files=$(ls -l $ordner | egrep '^[^dt].........' | wc -l)
echo "There are $number_of_files files in this directory."

# Get the number of directories
number_of_directories=$(ls -l $ordner | egrep '^d.........' | wc -l)
echo "There are $number_of_directories directories in this directory."

# Get the biggest file.
biggest_file=$(ls -Sl $ordner | head -2 | tail -1 | egrep -o ' [[:alnum:]_]+$')
echo "The biggest file/directory is: "$biggest_file

# Get the last edited file.
last_change=$(ls -lt $ordner | head -2 | tail -1 | egrep -o '[[:alnum:].-_]+$')
echo "Last changed file: $last_change"
echo

# Ask user if list of files should be displayed 
echo "Do you want me to display the list of all files? [y/n]"
read answer
if [ $answer != 'y' ]
then
    echo "Good bye!"
    exit
fi

# Get a list of all files in the directory.
ordner_files=$(bash useful_ls.sh $ordner)
echo "$ordner_files"
echo
