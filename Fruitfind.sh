#!/bin/bash

Fruits=(Apple Mango Orange Banana Grapes Watermelon Blackberry Blueberry)
echo "Enter the fruit to find: "
read search
j=0
flen=${#Fruits[*]}
: '
for ((i=0; i<=flen; i++)
do
	echo "$i: ${Fruits[$i]}"
done 
'
for (( i = 0; i <= flen; i++ ))
do
	echo "${Fruits[$i]}"
	if [ "${Fruits[$i]}" = "$search" ]; then
		#echo "$search found at index : $i"
		j=$i
	fi 
done 

echo "$search found at index : $j"
newFruit=(${Fruits[@]:0:$j} ${Fruits[@]:$(expr $j + 1)})
echo "New fruit details: "
echo "${newFruit[@]}"
echo "length: $flen"
echo "Byee.."
