#! /usr/bin/bash

read -p "Enter num1 and num2 -> " num1 num2
read -p "Enter type of operation ->
	( + ) add
	( - ) subtract
	( * ) multiply
	( / ) divide -> " operation

case $operation in 
	"+") let result=$(( $num1 + $num2 ));;
	"-") let result=$(( $num1 - $num2 ));;
	"*") let result=$(( $num1 * $num2 ));;
	"/") let result=$(( $num1 / $num2 ));;
esac

echo "The 2 numbers entered are $num1 and $num2"
echo "The selected operation is $operation"
echo "The answer is $result"
