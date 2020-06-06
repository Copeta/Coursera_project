#!/usr/bin/env bash
#
# NAME: guessinggame.sh
#
# Programmer: Aleksa Pecelj
#
# SYSTEM: UNIX/LINUX
#
# DATE: 06.06.2020. ver. 1
#
# Bugs: Program will crash if user enter number followed by character
#
# Description: This script is a simple guessing game. The goal is to guess how
#              much files is there in folder where this scrip is.
#              The game ends when user gives correct answer.
#              Valid guesses are just positive numbers.
#
#######################################################################################

neg=0
char=0

function is_neg {
    if [[ $1 -lt 0 ]]
    then
        neg=1
    fi
}

function is_char {
    if [[ $1 =~ [a-zA-Z] ]]
    then
        char=1
    fi
}

files_num=$(ls -1 | wc -l)

echo "The goal is to guess how many files is in this directory."
read -p "Please enter your guess:" response

while [[ $response -ne $files_num ]]
do
    neg=0
    char=0

    is_neg $response
    is_char $response

    if [[ -z $response ]]
    then
        read -p "Please, enter at least something:" response
    elif [[ neg -eq 1 ]]
    then
        read -p "Please, no negative numbers. Try again:" response
    elif [[ char -eq 1 ]]
    then
        read -p "Please, no characters. Try again:" response
    elif [[ $response -lt $files_num ]]
    then
        read -p "Your gues is too low. Please try again:" response
    elif [[ $response -gt $files_num ]]
    then
        read -p "Your gues is too big. Please try again:" response
    fi
done

echo "Congratulations! That is correct. There are $response files in this directory."
