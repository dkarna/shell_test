#! /bin/bash

name=("Ram" "Shyam" "Hari" "Sita" "Gita")
salary=(1000 350 220 5000 1230)
numarr=${#name[*]}
tempsal=0
tempname=""

for((i=0; i < numarr; i++))
do
	echo "Name: ${name[$i]}"
	echo "Salary: ${salary[$i]}"
done

for((i=0; i < numarr; i++))
do
	for((j=$i; j < numarr; j++))
	do
		if [ ${salary[$i]} -lt ${salary[$j]} ]
		then
			tempsal=${salary[$i]}
			salary[$i]=${salary[$j]}
			salary[$j]=$tempsal

			tempname=${name[$i]}
			name[$i]=${name[$j]}
			name[$j]=$tempname			

		fi
	done
done

echo "Names: ${name[@]}"
echo "Salary: ${salary[@]}"

