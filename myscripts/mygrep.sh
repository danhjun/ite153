#! /usr/bin/bash

read -p "Enter student name to search for -> " studname

result=$( grep -i "$studname" ../grades/*.txt )

if [ -z "$result" ]
then
	echo "Sorry, the name $studname was not found"
else
	echo "$result"
fi	

