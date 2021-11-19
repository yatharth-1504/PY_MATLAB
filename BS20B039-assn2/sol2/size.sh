#!/bin/bash
read -s -p "Enter the size in Kilobytes: " k
echo
if [[ $k -eq " " ]]
then
	MODSIZE=10000
	echo "showing files with size greater than $MODSIZE"
	find . -size +$MODSIZE -exec ls -lh {} \+
	find . -size +$MODSIZE -exec ls -lh {} \+ > small.txt 
else
	MODSIZE=$k
	echo "showing files with size greater then $k"
	find . -size +$k -exec ls -lh {} \+
	find . -size +$k -exec ls -lh {} \+ > small.txt
fi


