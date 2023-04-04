#! /usr/bin/bash

read -p "Enter a single character -> " userchar

case $userchar in 

	[0-9] ) echo "$userchar is a numerical value";;

	[[:lower:]] ) echo "$userchar is a lowercase letter";;

	[[:upper:]] ) echo "$userchar is an uppercase letter";;

	? ) echo "$userchar is a special character";;

	* ) echo "You entered multiple characters";;

esac

	 
