#!/bin/bash

declare -a salesperson
declare -a salary

i=0

for((i=0; i <= 5; i++))
	echo "Salesperson: "
	read salesperson[i]
	echo "salary: "
	read salary[i]


