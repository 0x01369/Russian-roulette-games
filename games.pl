#!/usr/bin/perl

# Display welcome message
print "Welcome to the game of Russian roulette!\n";

# Generate a random number from 1 to 6
use Math::Random;
my $number = int(Random->uniform(1, 6));

# Ask the user to enter a number
print "Enter a number (1-6): ";
my $forecast = <stdin>;
chomp $forecast;

# Check if the prediction is correct
if ($forecast == $number) {
  print "Congratulations! You've won!\n";
} else {
  # If incorrect, reboot the computer
  print "You've lost! The computer is restarting...\n";
  system("reboot");
}
