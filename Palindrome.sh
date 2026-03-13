#!/bin/bash

# Shell script to check if an entered string is a palindrome

echo "Enter a string:"
read str

# Clean the string: remove spaces and convert to lowercase
# This makes the check case-insensitive and ignores spaces
clean_str=$(echo "$str" | tr -d ' ' | tr '[:upper:]' '[:lower:]')

# Reverse the cleaned string
rev_str=""
len=${#clean_str}
for (( i=len-1; i>=0; i-- )); do
    rev_str="${rev_str}${clean_str:i:1}"
done

# Check if the cleaned string is equal to its reverse
if [ "$clean_str" == "$rev_str" ]; then
    echo "The entered string is a palindrome."
else
    echo "The entered string is not a palindrome."
fi
