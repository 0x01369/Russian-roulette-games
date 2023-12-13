import random
import os

def game():
    number = random.randint(1, 6)

    while True:
        forecast = input("Enter a number (1-6): ")

        if not forecast.isdigit() or not (1 <= int(forecast) <= 6):
            print("Please enter a valid number between 1 and 6.")
            continue
        
        if int(forecast) == number:
            print("Congratulations! You've won!")
            break
        else:
            print("You've lost! Try again.")

    # You might add a different message or action instead of rebooting the system.
    # os.system("reboot")

def main():
    print("Welcome to the game of Russian roulette!")
    game()

if __name__ == "__main__":
    main()

