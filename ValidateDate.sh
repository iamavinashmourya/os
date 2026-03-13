#!/bin/bash

# Shell script to validate a date in dd-mm-yyyy format

echo "Enter date in dd-mm-yyyy format:"
read date

# Check if the format matches dd-mm-yyyy using regex
if ! [[ $date =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]; then
    echo "Invalid date format. Please use dd-mm-yyyy."
    exit 1
fi

# Extract day, month, year
day=${date:0:2}
month=${date:3:2}
year=${date:6:4}

# Convert to integers (remove leading zeros)
day=$((10#$day))
month=$((10#$month))
year=$((10#$year))

# Validate month (1-12)
if [ $month -lt 1 ] || [ $month -gt 12 ]; then
    echo "Invalid month. Month must be between 01 and 12."
    exit 1
fi

# Array of days in each month (index 1-12)
days_in_month=(0 31 28 31 30 31 30 31 31 30 31 30 31)

# Check for leap year if February
if [ $month -eq 2 ]; then
    # Leap year: divisible by 4, but not by 100 unless also by 400
    if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
        days_in_month[2]=29
    fi
fi

# Validate day
if [ $day -lt 1 ] || [ $day -gt ${days_in_month[$month]} ]; then
    echo "Invalid day. For month $month, day must be between 01 and ${days_in_month[$month]}."
    exit 1
fi

echo "The entered date $date is valid."
