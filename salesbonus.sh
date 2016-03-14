#!/bin/bash

declare -a salesperson #=("a" "b" "c" "d" "e")
declare -a salary #=(1 2 3 4 5)

#i=0

for((i=0; i <= 5; i++))
do
	echo "Salesperson $i: "
	read salesperson[$i]
	echo "Quaterly sales $i: "
	read salary[$i]

done

echo "Here are your values:"
for((i=0; i< ${#salesperson[@]}; i++))
do
	echo $i
	echo "Salesperson $i: "
	echo "${salesperson[$i]}"
	echo "Quaterly sales $i: "
	echo "${salary[$i]}"

done
