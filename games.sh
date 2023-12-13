#!/bin/bash

# Display welcome message
echo "Welcome to the game of Russian roulette!"

# Generate a random number from 1 to 6
number=$((RANDOM % 6 + 1))

# Ask the user to enter a number
read -p "Enter a number (1-6): " forecast

# Check if the prediction is correct
if [ $forecast -eq $number ]; then
    # If correct, print a message
    echo "Congratulations! You've won!"
else
    # If incorrect, reboot the computer
    echo "You've lost! The computer is restarting..."
    reboot
fi

