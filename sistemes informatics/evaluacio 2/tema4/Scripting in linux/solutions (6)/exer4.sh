#!/bin/bash
read -p "Give me 2 numbers: " a b
if [[ -z $a || -z $b ]]
then
	echo "Number  of parameters is 2"
elif test $a -gt $b
then
	Res=$(( (a-b))
	echo "Result $Res"

else
	Res=$(( b-a ))
	echo "Result $Res"
fi
exit 0
