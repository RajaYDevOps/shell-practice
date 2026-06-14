#!/bin/bash

# NUMBER=$1

# if [ $NUMBER -gt 20 ]; then
#     echo "given number $NUMBER is greater than 20"
# elif [ $NUMBER -eq 20 ]; then
#     echo "given number $NUMBER is equal to 20"
# else
#      echo "given number $NUMBER is less than 20"
# fi


NUMBER1=$1
NUMBER2=$2

if [ $NUMBER1 -gt $NUMBER2 ]; then
    echo "given number $NUMBER is greater than 20"
elif [ $NUMBER1 -eq NUMBER2 ]; then
    echo "given number $NUMBER is equal to 20"
else
     echo "given number $NUMBER is less than 20"
fi