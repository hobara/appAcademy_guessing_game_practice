# I/O Exercises
#
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.


def guessing_game
  computer_guess = rand(1..100)
  print "guess a number: "
  user_guess = gets.chomp
  print user_guess
  counter = 1
  print "\nyou guessed #{counter} times\n"

  while computer_guess != user_guess
    if computer_guess.to_i > user_guess.to_i
      puts "too low"
      print "guess a number: "
      user_guess = gets.chomp
      puts "\n" + user_guess.to_s
      counter += 1
      puts "you guessed #{counter} times"
    elsif computer_guess.to_i < user_guess.to_i
      puts "too high"
      print "guess a number"
      user_guess = gets.chomp
      puts "\n" + user_guess.to_s
      counter += 1
      puts "you guessed #{counter} times"
    else
      puts "your guess is matched! good job!"
      break
    end
  end
end

def shuffle_file
  print "Type a file name: "
  input = gets.chomp
  original_lines = File.readlines("#{input}.txt")
  File.open("#{input}-shuffled.txt", "w") do |f|
    original_lines.shuffle.each do |line|
      f.puts line
    end
  end
end

# guessing_game
