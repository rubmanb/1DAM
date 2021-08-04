#!/bin/bash

if [[ $# -eq 1 ]]
then 

	if [[ -d $1 ]]
	then 
		if [ "$(ls $1)" ]
		then 
			echo "Directory exists and is is not empty"
		else
			echo "Directory is empty"
		fi
	else
		echo "Directory doesn't exist"
	fi

else
	echo "Give me an argument"

fi

exit 0
