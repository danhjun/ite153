#! /usr/bin/bash

while [ "$color" != "Quit" ]
do

	cat <<_EOF_

	Select a color...
	
	Blue
	Red
	Green
	Orange

	Enter Quit (case sensitive) to exit program

_EOF_

	read -p " -> " color

	echo -e "\n\n"

	case $color in
	
	"Blue" | "blue" ) echo "Blue is the color of the sky";;

	"Red" | "red" ) echo "Red is the color of a lobster";;

	"Green" | "green" ) echo "Green is the color of an emerald";;

	"Orange" | "orange" ) echo "Orange is the color of an orange";; 

	"Quit" ) echo "Thanks for using the color program";;
	
	* ) echo "The color you entered is not on the menu";;

	esac
done
