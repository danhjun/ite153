#! /usr/bin/bash

echo "Select a state from the following..."
echo "New York"
echo "California"
echo "Texas"
echo "Utah"
echo "Florida"
read -p " -> " state

case $state in
	"New York" | "new york") echo "The capital of New York is Albany";;
	"California" | "california") echo "The capital of California is Sacremento";;
	"Texas" | texas) echo "The capital of Texas is Austin";;
	"Utah" | utah) echo "The capital of Utah is Salt Lake City";;
	"Florida" | florida) echo "The capital of Florida is Tallahassee";;
	*) echo "The state you entered was not found";;
esac




 
