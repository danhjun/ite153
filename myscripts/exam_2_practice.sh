#! /usr/bin/bash

read -p "Enter size of pizza you would like to purchase 
Large: \$15 per pie
Small: \$9 per pie -> " size   

let "large_cost = 15"
let "small_cost = 9"
echo "Your selected pizza style: $size"
read -p "Enter $size pizza quantity -> " num_pizza

case $size in 
	"large" | "Large") let subtotal=$(( $large_cost * num_pizza ));;
	"small" | "Small") let subtotal=$(( $small_cost * num_pizza ));;
	? ) subtotal="Invalid menu option";;
	* ) subtotal="Invalid menu option";;
	[[:lower:]] ) subtotal="Invalid menu option";;
	[[:upper:]] ) subtotal="Invalid menu option";;
esac

echo "Your subtotal is \$$subtotal"

if [ "$subtotal" == "Invalid menu option" ]
then
        echo "Invalid menu option"
else
	read -p "Enter shipping type you would like to select
Warp Speed: \$45
Snail Pace: \$5 -> " shipping
fi        

echo "Your selected shipping method is: $shipping"

let "warp_speed = 45"
let "snail_pace = 5"

case $shipping in
        "Warp Speed" | "warp speed") let total=$(( $subtotal + $warp_speed ));;
        "Snail Pace" | "snail pace") let total=$(( $subtotal + $snail_pace ));;
        ? ) total="Invalid menu option";;
        * ) total="Invalid menu option";;
        [[:lower:]] ) total="Invalid menu option";;
        [[:upper:]] ) total="Invalid menu option";;
esac

if [ "$total" == "Invalid menu option" ]
then
        echo "Invalid menu option"
else
	echo "The purchase total is \$$total"
fi
