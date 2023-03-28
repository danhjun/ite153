#! /usr/bin/bash

read -p "Enter how many cones to purchase-> " quantity
let "cone_cost = 5"
let subtotal=$(( $quantity * $cone_cost ))

read -p "Enter any additional topping, leave blank if you don't want any-> " topping
let "sprinkles = 5"
let "fudge = 10"
let "peanuts = 10"

if [ "$topping" == "Sprinkles" ]
then
	let total=$(( $subtotal + $sprinkles ))
elif [ "$topping" == "Fudge" ]
then
	let total=$(( $subtotal + $fudge ))
else
	let total=$(( $subtotal + $peanuts ))
fi
	echo $total
