#!/usr/bin/bash
# Backs up a single project directory
# Shira 5/5/2023

if [ $# != 1 ]
then
    echo Usage: A single argument which is the directory to backup
    exit 
fi

if [ ! -d ~/MyScripts/$1 ]
then
    echo 'The given directory does not seem to exist (possible typo?)'
    exit 
fi

date=`date +%F`

# Do we already have a backup folder for todays date?
if [ -d ~/MyScriptsBackup/$1_$date ]
then
    echo 'This project has already been backed up today, overwrite?'
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
else
    mkdir ~/MyScripts_Backup/$1_$date
fi

cp -R ~/MyScripts/$1 ~/MyScripts_Backup/$1_$date 
echo Backup of $1 completed 

