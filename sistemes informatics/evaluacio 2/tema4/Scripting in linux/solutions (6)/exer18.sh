#!/bin/bash

function adding {
	return $(( $1+$2 ))
}
function subtraction {

	if [[$1 -gt $2 ]]
	   then 
		local res=$(( $1-$2 ))
		echo $1-$2=$res
	   elif [[ $a -le $b ]]
	   then
		local res=$(( $1-$2))
		echo $2-$1=$res
	   fi

}

function mult {

	echo $(( $1*$2 ))
}
function division {

	if [[ $2 -eq 0 ]]
	then 
		echo "Dividend should be greater than 0"

	else
		local  res=$(( $1/$2 ))
		echo $1/$2=$res
	fi
}


read -p "What operation do you want to do (+,-,x,/)" op
read -p "Tell me the operands" a b

case $op in 
	+) adding $a $b
	   echo $a+$b=$?
	;;
	-) subtraction $a $b
	;;		
	x) res=$(mult $a $b)
	echo $a"x"$b=$res
	;;
	/) division $a $b
	;;
	*) echo "Introduce +,-,x,/"
	;;

exit 0
