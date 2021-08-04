#!/bin/bash
if [[ $# -eq 2 ]]
then 
	if [[ $1 = $2 ]]
	then 
		echo "The strings are equal"
	else 
		echo "The strings are different"
	fi
else 
	echo "Too many parameters"
fi
exit 0
