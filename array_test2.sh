#! /bin/bash

ERR=27
EXT=0

if [ $# -ne 1 ]; then
	echo "Usage: $0 <path>"
	exit $ERR
fi

if [ ! -d $1 ]; then
	echo "Directory $1 doesn't exists"
	exit $ERR
fi

temp=( $(find $1 -maxdepth 1 -type f) )

for i in "${temp[@]}"
do
	perm=$(ls -l $i)
	if [ `expr ${perm:0:10} : "-rwxr-xr-x"` -eq 10 ]; then
		echo ${i##*/}
	fi
done
exit $EXT
