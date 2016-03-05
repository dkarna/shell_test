#!/bin/bash

declare -a bj_cards=("A.1" "A.2" "A.3" "A.4" "J.1" "J.2" "J.3" "J.4" "2.1" "2.2" "2.3" "2.4" "3.1" "3.2" "3.3" "3.4" "4.1" "4.2" "4.3" "4.4" "5.1" "5.2" "5.3" "5.4")
declare -a bj_values=(1 1 1 1 10 10 10 10 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5)


declare -a ram_cards
declare -a ram_values
declare -a deal_cards
declare -a deal_values

rnum=$(( ( RANDOM % 23 ) + 1 ))
option='y'
crdiff=0
 
function readArray
{
	for ((i=0; i<${#bj_cards[@]}; i++))
	do
		
			echo  "${bj_cards[$i]} : ${bj_values[$i]}"
	
	done
}

readArray

function dealCards
{
	echo "Hello"
}

while :
do
	if [[ $count -ge 0 && $rnum -ge 0 ]]
	then

		echo "${bj_cards[$rnum]} : ${bj_values[$rnum]}"
		if test "$option" = "n"
		then
			echo "break part"
			break
		fi
		echo "count: ${#bj_cards[@]}"
		rnum=$(( ( RANDOM % ${#bj_cards[@]}-1 ) + 1 ))
		crdiff=$(($count - $rnum))
		
		if [[ $crdiff -eq 1 ]]
		then
			rnum=$(($rnum - 1))
		fi

		echo "Random: $rnum"
		bj_cards=(${bj_cards[@]:0:$rnum} ${bj_cards[@]:$(($rnum + 1))})
		bj_values=(${bj_values[@]:0:$rnum} ${bj_values[@]:$(($rnum + 1))})
	else
		echo "You are at end point"	
	fi
	
	echo "Continue(y/n)"
		read option
		
done
