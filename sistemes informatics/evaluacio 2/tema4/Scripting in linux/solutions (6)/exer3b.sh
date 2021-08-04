#!/bin/bash
read -p "Give me 3 paramters: " a b c
if [[ -z $a || -z $b || -z $c ]]
then
	echo "Number  of parameters is 3"
elif test $c -eq 0
then
	echo "Third parameter shouldn't be 0 "
else
	Res=$(( (a+b)/c ))
	echo "Result $Res"
fi
exit 0
