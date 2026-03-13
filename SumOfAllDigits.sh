#!/bin/bash

# Shell script to calculate the sum of all digits of a given number

echo "Enter a number:"
read num

# Initialize sum to 0
sum=0

# Handle negative numbers by taking absolute value
if [ $num -lt 0 ]; then
    num=$(( -num ))
fi

# Loop through each digit
while [ $num -gt 0 ]; do
    # Get the last digit
    digit=$(( num % 10 ))
    # Add to sum
    sum=$(( sum + digit ))
    # Remove the last digit
    num=$(( num / 10 ))
done

echo "Sum of digits: $sum"
