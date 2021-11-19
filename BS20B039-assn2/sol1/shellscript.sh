#!/bin/bash
#we are generating random nos in a given range here

for ((i = 1; i <= 50; i++))
do 
	#here we are writing the csv file	
	marks_in_q1=$(($RANDOM%25))
	marks_in_q2=$(($RANDOM%25))
	marks_in_endsem=$(($RANDOM%50))
	echo "$i,$marks_in_q1,$marks_in_q2,$marks_in_endsem" >> marks.csv 
done
