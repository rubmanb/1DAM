#!/bin/bash
if [[ $# -eq 1 ]]
then 
	if [[ -e $1  ]]
	then 
		echo "There is a file with this name"
	else 
		touch $1
		read -p "Tell me other name" name
		if [[ -e $name ]]
		then 
			echo "There is a file with this name"
		else 
			mv $1 $name
		fi
	fi
	
else 
	echo "Give 1 parameter"
fi
exit 0
