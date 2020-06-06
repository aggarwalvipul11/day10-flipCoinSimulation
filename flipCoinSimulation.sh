#!/bin/bash -x

function flip()
{
    if [[ $((RANDOM%2)) == 0 ]]
    then
        echo "heads"
    else
        echo "tails"
    fi
}

a[0]=0
a[1]=0
while [ ${a[0]} -lt 21 ] &&  [ ${a[1]} -lt 21 ]
do  
    temp=$(flip)
    if [[ $temp == 'heads' ]]
    then
        a[0]=$((${a[0]}+1))
    else
        a[1]=$((${a[1]}+1))
    fi
done
echo "score of heads is ${a[0]} and tails is ${a[1]}"
