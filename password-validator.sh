#!/bin/bash

#User input password
PASSWORD=$1

#Colors for output
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)

function printOutput() {
    # The function prints the correct message for each case.
    # if the password is valid: 
    #     exit code - 0
    #     output color - green
    # if the password is not valid:
    #     exit code - 1
    #     output color - red
    if [ $1 -eq "0" ]
    then
        echo "${GREEN} $2"
        exit 0
    else
        echo "${RED} $2"
        exit 1
    fi
}

# Check if PASSWORD length is less than 10 characters
if [ ${#PASSWORD} -lt 10 ]
then
    printOutput 1 "Password is less than 10 characters"
fi

#Check if PASSWORD does not contain alphabet and number
if ! [[ $PASSWORD =~ [A-Za-z] && $PASSWORD =~ [0-9] ]]
then
    printOutput 1 "Password must contain alphabet and number"
fi

#Check if PASSWORD does not include both small and capital case letters.
if ! [[ $PASSWORD =~ [a-z] && $PASSWORD =~ [A-Z] ]]
then
    printOutput 1 "Password must include both small and capital case letters"
fi

#If we got here, PASSWORD is valid
printOutput 0 "Password is valid!"
