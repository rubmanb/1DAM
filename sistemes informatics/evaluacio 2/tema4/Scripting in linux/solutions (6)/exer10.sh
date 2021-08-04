#!/bin/bash
if [[ $# -eq 1 ]]
then 
	if [[ -e $1  ]]
	then 
		echo "There is a file with this name"
	else 
		touch $1
		read -p "Tell me the name again" name
	 	until [ $name = $1 ]
		do 
			read -p "Tell me the name again" name
		done
			echo "Your file is: name"
	fi
	
else 
	echo "Give 1 parameter"
fi
exit 0
