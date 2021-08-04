#!/bin/bash
folder=0
files=0
if [[ $# -eq 1 ]]
then 
	for i in `ls $1`
	do
		if [[ -f $i ]]
		then 
			files=$(( files+1 ))
		elif [[ -d $i ]]
		then
			folder=$(( folder+1))
		fi
	done
	echo "The directory $1 has $files files and $folder directories."
else
	echo "Give me an argument"

fi

exit 0
