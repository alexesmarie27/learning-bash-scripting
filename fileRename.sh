#!/bin/bash

#the filename is captured from the user input and set to the variable filename
# if the filename exists, the new file name is the inputted file name concatenated with .bak and the current date. else, the user is told the file does not exist
#if the file did exist, the new file name is checked to see if it already exists
#if it does, the user is asked if they want to overwrite the file
# if they do, the old file is removed and the file is copied into the new filename
# if they don't, then the program exits
# if it doesn't, the originally inputted file is copied into the new filename

filename=$1
if [ -e $filename ]
then
        appendage=".bak"
        date=$(date +%F)
        newfile=$filename$appendage$date
        if [ -e $newfile ]
        then
                read -p "Do you want to overwrite the existing file? (y or n)" yn
                case $yn in
                        [Yy]* ) rm $newfile; cp $filename $newfile;;
                        [Nn]* ) exit;;
                        * ) echo "Please type y or n";;
                esac
        else
                cp $filename $newfile
        fi
else
        echo "File does not exist"
fi
