def game
  # Generate a random number from 1 to 6
  number = rand(1..6)

  # Ask the user to enter a number
  print 'Enter a number (1-6): '
  forecast = gets.chomp

  # If the prediction is correct, the game continues
  if forecast.to_i == number
    puts "Congratulations! You've won!"
  else
    # If the prediction is wrong, display a message
    puts "You've lost! The computer is reboot..."
    system('sudo reboot') # Bu komut sistemde sudo izni gerektirir.
    # Ek olarak, gerçek bir sistem "reboot" işlemi yapmak için uygun izinlere sahip olmanız gerekir.
  end
end

def main
  # Print a message before starting the game
  puts 'Welcome to the game of Russian roulette!'
  game
end

if __FILE__ == $PROGRAM_NAME
  main
end

