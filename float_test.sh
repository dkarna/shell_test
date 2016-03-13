#! /bin/bash

read var

if [[ $var =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]
then
	echo "Number"
else
	echo "Not number"
fi
