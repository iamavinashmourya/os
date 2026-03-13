#!/bin/bash

# Basics of Shell Programming

# 1. Shebang: The first line tells the system which interpreter to use
# This script uses bash

# 2. Comments: Lines starting with # are comments
echo "This is a comment example"

# 3. Variables: Store data
NAME="John Doe"
AGE=25
echo "Name: $NAME"
echo "Age: $AGE"

# 4. Read input from user
echo "Enter your favorite color:"
read COLOR
echo "Your favorite color is: $COLOR"

# 5. Command substitution: Capture output of commands
CURRENT_DATE=$(date)
echo "Current date: $CURRENT_DATE"

# Alternative syntax
CURRENT_USER=`whoami`
echo "Current user: $CURRENT_USER"

# 6. Arithmetic operations
NUM1=10
NUM2=5
SUM=$((NUM1 + NUM2))
echo "Sum: $SUM"

# 7. Conditional statements
if [ $AGE -gt 18 ]; then
    echo "You are an adult"
else
    echo "You are a minor"
fi

# String comparison
if [ "$COLOR" == "blue" ]; then
    echo "Blue is a cool color!"
elif [ "$COLOR" == "red" ]; then
    echo "Red is passionate!"
else
    echo "Nice choice!"
fi

# 8. Loops

# For loop
echo "Counting to 5:"
for i in {1..5}; do
    echo $i
done

# While loop
echo "While loop example:"
COUNT=1
while [ $COUNT -le 3 ]; do
    echo "Count: $COUNT"
    ((COUNT++))
done

# 9. Functions
greet() {
    echo "Hello, $1!"
}

greet "World"
greet "$NAME"

# 10. Exit codes
# 0 means success, non-zero means error
if [ -f "nonexistent_file.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
    exit 1  # Exit with error code
fi

# 11. Arrays
FRUITS=("apple" "banana" "orange")
echo "First fruit: ${FRUITS[0]}"
echo "All fruits: ${FRUITS[@]}"

# 12. Case statement
echo "Enter a number (1-3):"
read NUM
case $NUM in
    1) echo "You chose one" ;;
    2) echo "You chose two" ;;
    3) echo "You chose three" ;;
    *) echo "Invalid choice" ;;
esac

# 13. File operations in conditions
if [ -d "/tmp" ]; then
    echo "/tmp is a directory"
fi

if [ -r "$0" ]; then
    echo "This script is readable"
fi

# 14. String manipulation
STRING="Hello World"
echo "Length: ${#STRING}"
echo "Substring: ${STRING:6:5}"

# 15. Special variables
echo "Script name: $0"
echo "Number of arguments: $#"
echo "All arguments: $@"
echo "Process ID: $$"

echo "Shell programming basics completed!"
