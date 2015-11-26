# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: an integer that you guess the answer
# Output: if the guess is correct, the game will return correct, if low, the game will return low, if high, the game will return high 
# Steps:

=begin
initialize the answer and set a flag that indicate if the game is solved
define a guess method with single argument of guess
if the guess is greater than answer, return high, if low, return low, if correct, return correct
aslo we define a solved? method that will indicate if the game is solved or not. we use the flag we set before to check if we get the correct answer
=end

# Initial Solution

class GuessingGame
  
  def initialize(answer)
    # Your initialization code goes here
    # Set the answer and initializes
    @answer = answer
    # Set a flag for game to indicate if the game is solved or not
    @solved = false
  end

  # Make sure you define the other required methods, too
  def guess(guess_integer)
    #
    if guess_integer > @answer
      @solved = false
      return :high
    elsif guess_integer < @answer
      @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    if @solved
      return true
    else
      return false
    end
  end
end

game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"



# Refactored Solution

class GuessingGame
  
  def initialize(answer)
    # Your initialization code goes here
    # Set the answer and initializes
    @answer = answer
    # Set a flag for game to indicate if the game is solved or not
    @solved = false
  end

  # Make sure you define the other required methods, too
  def guess(guess_integer)
    #
    if guess_integer > @answer
      @solved = false
      :high
    elsif guess_integer < @answer
      @solved = false
      :low
    else
      @solved = true
      :correct
    end
  end

  def solved?
    if @solved
      true
    else
      false
    end
  end
end

game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# A: instance variables are the properties of the class that exist in the class and you store data in it. Methods means the functions this class can make and it is like something's ability in doing something.

# When should you use instance variables? What do they do for you?

# A: When I want to store data in the class and don't want other subclass to access the data. Instance variable will store the data and I can access by using built-in methods in the class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# A: If you know how many cases you need to consider in the project, you can choose if-else, case, or triple operation. Put the condition you will encounter, and under this condition, something will happen. Then you keep doing the others conditions just like the first one you did. I don't have any trouble using it in this challenge.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# A: Since symbol is the object that there is only one store in the memory. Once you set the value of the symbols, you will only have one access to this symbol. When you only have several choices or conditions, you use symbols represent those and it is allow you to easily manage the data stored inside symbols. Only if the symbol's value is the same, that means they are the same symbol regardless where they are. 