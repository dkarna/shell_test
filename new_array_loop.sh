#! /bin/bash

read -a array

: ' array[0]="deepak"
array[1]="shubham"
array[2]="himalaya"
array[3]="sangita"'

for i in "${array[@]}"
do
	echo "$i"
done
