#!/bin/bash 

counter=0
echo $counter
fruits[((counter++))]="apple"
echo $counter
fruits[((counter++))]="banana"
echo $counter
fruits[((counter++))]="orange"
echo $counter

echo ${fruits[@]}



