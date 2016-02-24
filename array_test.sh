#!/bin/bash

declare -a nos=(4 -1 2 66 10)
declare -a names=("ram" "shyam" "hari" "sita" "gita")

echo "Original Numbers in array: "
for (( i = 0; i <= 4; i++ ))
do
	echo "${nos[$i]} : ${names[$i]}"
done

for (( i = 0; i <= 4; i++ ))
do
	for (( j = $i; j <= 4; j++ ))
	do
		if [ ${nos[$i]} -lt ${nos[$j]} ]; then
			t=${nos[$i]}
			nos[$i]=${nos[$j]}
			nos[$j]=$t
			t1=${names[$i]}
			names[$i]=${names[$j]}
			names[$j]=$t1
		fi
	done
done

echo -e "\nSorted Numbers in Ascending Order: "
for (( i=0; i <= 4; i++ ))
do
	echo "${nos[$i]} : ${names[$i]}"
done
