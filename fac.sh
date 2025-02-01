#!/bin/bash


echo "Enter a number:"

# Read the input
read num

# Check if the input is a valid integer
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid integer."
  exit 1
fi

# Calculate factorial
fact=1

while [ $num -gt 1 ]; do
  fact=$((fact * num))
  num=$((num - 1))
done

# Print the factorial value
echo $fact
