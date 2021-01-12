#!/bin/bash
a=0
read -p "enter starting number :" snum
read -p "enter ending number :" enum
while [[ $snum -le $enum ]]
do
if [[ $(( $snum%11 )) -eq 0 ]]
then
a=$(($a+1))
for i in a
do
p[$i]="$snum"
done
fi
snum=$(($snum+1))
done
echo "Those numbers are =" ${p[@]}
