#include <stdio.h>
#include <stdlib.h>

int main() {
    // Display welcome message
    printf("Welcome to the game of Russian roulette!\n");

    // Generate a random number from 1 to 6
    int number = rand() % 6 + 1;

    // Ask the user to enter a number
    printf("Enter a number (1-6): ");
    int forecast;
    scanf("%d", &forecast);

    // Check if the prediction is correct
    if (forecast == number) {
        printf("Congratulations! You've won!\n");
    } else {
        // If incorrect, reboot the computer
        printf("You've lost! The computer is restarting...\n");
        system("reboot");
    }

    return 0;
}
