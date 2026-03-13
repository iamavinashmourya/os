#!/bin/bash

# Shell script to reverse an integer

echo "Enter an integer:"
read num

# Check if the number is negative
is_negative=false
if [ $num -lt 0 ]; then
    is_negative=true
    num=$(( -num ))  # Make it positive for reversal
fi

# Reverse the number
reversed=0
while [ $num -gt 0 ]; do
    digit=$(( num % 10 ))
    reversed=$(( reversed * 10 + digit ))
    num=$(( num / 10 ))
done

# Add back the negative sign if it was negative
if $is_negative; then
    reversed=$(( -reversed ))
fi

echo "Reversed integer: $reversed"
