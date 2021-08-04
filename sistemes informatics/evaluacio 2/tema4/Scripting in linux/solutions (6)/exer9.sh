#!/bin/bash
if [[ $# -eq 1 ]]
then 
 	 if [[ -e $1 ]]
	then 
		du $1
	else
		echo "File doesn't exist"
	fi
	
else 
	echo "Give a name file"
fi
exit 0
