#!/bin/bash -x

if [[ $((RANDOM%2)) == 0 ]]
then
    echo "heads"
else
     echo "tails"
fi

