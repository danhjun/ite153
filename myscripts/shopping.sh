#! /usr/bin/bash

read -p "Enter starting money amount -> " mymoney
read -p "Enter cost of item 1 -> " cost1
read -p "Enter cost of item 2 -> " cost2

let total=$(( $cost1 + $cost2 ))

echo "Value of my money is $mymoney"
echo "Total cost of purchase is $total"

if [ $mymoney -ge $total ]
then 
	echo "You have enough money for this purchase"
else
	echo "Sorry, better go get more hours at work"
fi 
