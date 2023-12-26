#!/bin/bash

echo -n "Enter a day of the week (1-7): "
read day


if [ "$day" -ge 1 ] && [ "$day" -le 7 ]; then
    echo "Valid input."
else
    echo "Invalid input. Please enter a number between 1 and 7."
    exit 1  # Exit the script with an error code
fi


if [ "$day" -le 5 ]; then
    echo "It's a weekday."
else
    echo "It's a weekend day."
fi


if [ "$day" -ge 1 ] && [ "$day" -le 5 ]; then
    echo "It's a working day."
else
    echo "It's not a working day."
fi


if [ "$day" -eq 1 ]; then
    echo "It's the first day of the month."
fi


if [ "$((day % 2))" -eq 0 ]; then
    echo "It's an even-numbered day."
else
    echo "It's an odd-numbered day."
fi
