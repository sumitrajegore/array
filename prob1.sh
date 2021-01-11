#!/bin/bash
min=1000
max=99 
for (( i=0; i<10; i++ ))
do
     num[((i))]=$((100 + (RANDOM%900) ))
     echo "array a[$i] =" ${num[i]}
done
echo ${num[@]}
printf "\n"

for (( i=0; i<10; i++ ))
do
if [[ ${num[$i]} -gt $max ]]
then
max="${num[$i]}"
elif [[ ${num[$i]} -lt $min ]]
then
min="${num[$i]}"
fi
done
echo "max : " $max
echo "min : " $min
