#!/bin/bash

#Asks the user to select a number 1-5
#If the user chooses:
# 1) the two numbers are added
# 2) the two numbers are subtracted
# 3) the two numbers are multiplied
# 4) the two numbers are divided
# 5) mod arithmetic
# Any other number or character: The program closes 

PS3="Please choose an option: "
options=("+" "-" "*" "/" "%")
select opt in "${options[@]}"
do
    case $opt in
        "+")
            result=$(($1 + $2))
            echo $result
            ;;
        "-")
            result=$(($1 - $2))
            echo $result
            ;;
        "*")
            result=$(($1 * $2))
            echo $result
            ;;
        "/")
            result=$(($1/$2))
            echo $result
            ;;
        "%")
            result=$(($1%$2))
            echo $result
            ;;
        *) echo "Invalid option!"; break;;
    esac
done
