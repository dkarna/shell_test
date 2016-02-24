#!/bin/bash

function testf()
{
	echo "test function"
	echo "Your argument is $1"
}

function sorta()
{
	nos=${!1}
	for (( i = 0; i <= 4; i++ ))
	do
		for (( j = $i; j <= 4; j++ ))
		do
			if [ ${nos[$i]} -lt ${nos[$j]} ] 
			then
				t=${nos[$i]}
				nos[$i]=${nos[$j]}
				nos[$j]=$t
			fi
		done
	done
	
	echo -e "\nSorted Numbers in Ascending Order: "
	for (( i=0; i <= 4; i++ ))
	do
		echo "${nos[$i]}"
	done
	
	#return $nos
}

# start of program body

i='y'
declare -a nos=(4 -1 2 66 10)

while :
do
	testf $i
	sorta nos[@]
	
	echo "Do you want to continue(y/n)?"
	read i

	if test "$i" = "n"
	then
		break
	fi

done

echo "byee.."
