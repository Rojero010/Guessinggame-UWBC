#!/usr/bin/env bash
echo "---------------------------"
echo "Guessing Game"
echo "---------------------------"
echo "Try to guess how many files are in this directory?"

function compare {
        if [[ $guess -gt $count_files ]] 
    then
        echo "That's too high.. Try again"
    elif [[ $guess -lt $count_files ]] 
    then
        echo "That's too low.. Try again"
    fi
    read guess
}

count_files=$( ls -l | grep "^-"| wc -l)
    read guess
while [[ $guess -ne $count_files ]]
do
compare
done
echo "---------------------------"
echo "Nice! It was $count_files all along"
echo "Congrats"
