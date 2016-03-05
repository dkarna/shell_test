#!/bin/bash


declare -a array1=("test1" "test2" "test3" "test4" "test5")


num=$(( ${#array1[@]} -1 ))

newseq=$( shuf -i 0-$num )

for i in $newseq;
do
	outstring+="${array1[$i]},"
done

echo ${outstring%,}
