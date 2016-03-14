#! /bin/bash

echo "Enter the value of var:"
read var
echo "Enter the value of var1:"
read var1


if [[ ( $var =~ ^[+-]?[0-9]+\.?[0-9]*$ ) && ( $var1 =~ ^[+-]?[0-9]+\.?[0-9]*$ ) ]]
then
	echo "Number"
else
	echo "Not number"
fi
