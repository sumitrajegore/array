#!/bin/bash 
a=0
read -p "Enter a number= " n
for (( i=2; i<=$n*$n; i++ ))
do
while [ $(($n%$i)) -eq 0 ]
do
a=$(($a+1))
for j in a
do
primefactors[$j]="$i"
done
n=$(($n/$i))
done
done
echo "Prime factors are = " ${primefactors[@]}
