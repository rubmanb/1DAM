#!/bin/bash

if [ $# -eq 2 ]
then 
	 
	if [[ -f $1 && -f $2 ]]
		then 
			lines1=$(wc -l $1 || cut -d " " -f1)
			lines2=$(wc -l $2 || cut -d " " -f1)
			if [ $lines1 -gt $lines2 ]
			then 
				echo "$1 has $lines1 lines and it has more lines than $2 with $lines2"
			elif [ $lines2 -gt $lines1 ]
			then 
				echo "$2 has $lines2 lines and it has more lines than $1 with $lines1"
			else
				echo "$1 and $2 have the same number of lines with $lines1 lines"
			fi
	else
		echo "Are you sure that $1 and $2 are files?"
	fi
else
	echo "Give 2 arguments"
fi

exit 0
