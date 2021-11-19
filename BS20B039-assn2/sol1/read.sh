#!/bin/bash
#processing a file
m=0
var=0
while IFS="," read -r rollno marks1 marks2 marks3 
do
 	var=`expr $marks1 + $marks2 + $marks3`
	if [[ $m -lt $var ]]
	then 
		m=$var
	fi
done < <(tail -n +2 marks.csv)
nmr=0
v=0
while IFS="," read -r rollno marks1 marks2 marks3 
do
	echo 
	echo "ROLL NUMBER = $rollno"
	v=`expr $marks1 + $marks2 + $marks3`
	v=`expr $v \* 100`
	nmr=`expr $v / $m`
	echo "MARKS IN Q1 = $marks1"
	echo "MARKS IN Q2 = $marks2"
	echo "MARKS IN END-SEM EXAM = $marks3" 
	echo "NORMALISED MARKS = $nmr"
	if [[ $nmr -gt 90 ]]
	then
		echo "GRADE ACHIEVED = S"
	elif [[ $nmr -gt 80 ]]
	then
		echo "GRADE ACHIEVED = A"
	elif [[ $nmr -gt 70 ]]
	then
		echo "GRADE ACHIVED = B"
	elif [[ $nmr -gt 60 ]]
	then
		echo "GRADE  ACHIEVED = C"
	elif [[ $nmr -gt 50 ]]
	then
		echo "GRADE ACHIEVED= D"
	elif [[ $nmr -gt 50 ]]
	then
		echo "GRADE ACHIVED = E"
	else
		echo "GRADE ACHIEVED = U"
	fi
	echo 
done < <(tail -n +2 marks.csv)
