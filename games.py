import random
import os

def game():
# Generate a random number from 1 to 6
    number = random.randint(1, 6)

    # Ask the user to enter a number
    forecast = input("Enter a number (1-6): ")

    # If the prediction is correct, the game continues
    if int(forecast) == number:
        print("Congratulations! You've won!")
    else:
        # If the prediction is wrong, the computer is reboot
        print("You've lost! The computer is reboot...")
        os.system("reboot")

def main():
    # Print a message before starting the game
    print("Welcome to the game of Russian roulette!")
    game()

if __name__ == "__main__":
    main()

