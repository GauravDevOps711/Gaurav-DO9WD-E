#!/bin/bash

echo -n "Enter a number: "
read number


if [ "$number" -gt 0 ]; then
    echo "The number is positive."
elif [ "$number" -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
fi


if [ "$((number % 2))" -eq 0 ]; then
    echo "The number is even."
else
    echo "The number is odd."
fi


if [ "$number" -gt 10 ]; then
    echo "The number is greater than 10."
fi


if [ "$number" -ge 5 ] && [ "$number" -le 15 ]; then
    echo "The number is between 5 and 15 (inclusive)."
fi
