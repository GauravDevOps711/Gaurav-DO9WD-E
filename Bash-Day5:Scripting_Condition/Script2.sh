#!/bin/bash


echo -n "Enter a number between 1 and 100: "
read number


if [ "$number" -ge 1 ] && [ "$number" -le 100 ]; then
    echo "Valid input."
else
    echo "Invalid input. Please enter a number between 1 and 100."
    exit 1  # Exit the script with an error code
fi


if [ "$((number % 3))" -eq 0 ] && [ "$((number % 5))" -eq 0 ]; then
    echo "The number is divisible by both 3 and 5."
elif [ "$((number % 3))" -eq 0 ]; then
    echo "The number is divisible by 3 but not by 5."
elif [ "$((number % 5))" -eq 0 ]; then
    echo "The number is divisible by 5 but not by 3."
else
    echo "The number is not divisible by either 3 or 5."
fi


is_prime=true
for (( i=2; i<=$((number/2)); i++ )); do
    if [ "$((number % i))" -eq 0 ]; then
        is_prime=false
        break
    fi
done

if [ "$is_prime" = true ]; then
    echo "The number is a prime number."
else
    echo "The number is not a prime number."
fi
