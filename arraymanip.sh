#! /bin/bash

Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo "***********Display the offset and values in whole array*******"
echo ${Unix[@]:3:2}
echo "***********Display the offset and values in a index of array"
echo ${Unix[2]:0:4}
echo "Search for the word Ubuntu in the array elements and replace the same with the word SCO Unix"
echo ${Unix[@]/Ubuntu/SCO Unix}
echo "*** Add an element to existing array******"
Unix=("${Unix[@]}" "AIK" "HP-UX")
echo ${Unix[@]}
echo "****Eliminate any index value from the array*****"
unset Unix[3]
echo ${Unix[@]}
echo "***Remove element completely from array***"
pos=3
Unix=(${Unix[@]:0:$pos} ${Unix[@]:$(($pos + 1))})
echo ${Unix[@]}
echo "***Remove the array elements on the basis of patterns***"
declare -a patter=( ${Unix[@]/Red*/} )
echo ${patter[@]}
echo "***Copying and array***"
Linux=("${Unix[@]}")
echo ${Linux[@]}
echo "***Concatenation of two bash arrays***"
Shell="'bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh')";

UnixShell=("${Unix[@]}" "${Shell[@]}")
echo ${UnixShell[@]}
echo ${#UnixShell[@]}
