#!/bin/bash

echo "Enter date (dd-mm-yyyy):"
read date

day=$(echo $date | cut -d'-' -f1)
month=$(echo $date | cut -d'-' -f2)
year=$(echo $date | cut -d'-' -f3)

case $month in
01|03|05|07|08|10|12)
    max=31
    ;;
04|06|09|11)
    max=30
    ;;
02)
    if (( ($year % 4 == 0 && $year % 100 != 0) || ($year % 400 == 0) ))
    then
        max=29
    else
        max=28
    fi
    ;;
*)
    echo "Invalid Date"
    exit
    ;;
esac

if [ $day -le $max ]
then
    echo "Valid Date"
else
    echo "Invalid Date"
fi