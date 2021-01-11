#!/bin/bash
for (( i=0; i<10 ; i++ ))
do
    x=$((100 + ($RANDOM%900) ))
    b[i]=$x
done
echo "10 random 3 digit numbers are= " ${b[@]}
for (( i=0; i<9; i++ ))
do
for (( j=i+1; j<10; j++ ))
do
if [[ ${b[i]} -gt ${b[j]} ]]
then
         z="${b[i]}"
         b[$i]="${b[j]}"
         b[$j]=$z
fi
done
done
echo "Sorted output in ascending order= " ${b[@]}
echo "Second largest no.= " ${b[8]}
echo "Second lowest no.=" ${b[1]}
for (( i=0; i<9; i++ ))
do
for (( j=i+1; j<10; j++ ))
do
if [[ ${b[i]} -lt ${b[j]} ]]
then
       z="${b[i]}"
       b[$i]="${b[j]}"
       b[$j]=$z
fi
done
done
echo "Sorted output in descending order= " ${b[@]}
echo "Second lowest no.=" ${b[8]}
