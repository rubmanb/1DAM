#!/bin/bash

read -p "What operation do you want to do (+,-,x,/)" op
read -p "Tell me the operands" a b

case $op in 
	+) res=$(( $a+$b ))
	echo $a+$b=$res
	;;
	-) if [[$a -gt $b ]]
	   then 
		res=$(( $a-$b ))
		echo $a-$b=$res
	   elif [[ $a -le $b ]]
	   then
		res=$(( $b-$a))
		echo $b-$a=$res
	   fi
	;;
	x) res=$(( $a*$b ))
	echo $a"x"$b=$res
	;;
	/)if [[ $b -eq 0 ]]
	then 
echo "Dividend should be greater than 0"

	else
		res=$(( $a/$b ))
		echo $a/$b=$res
	fi
	;;
	*) echo "Introduce +,-,x,/"
	;;
esac
exit 0
