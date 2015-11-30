# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

  # create an array to store the letter and number
  # shuffle the bingo letter and get a letter, randomly choose a number from 1-100

# Check the called column for the number called.
  #fill in the outline here

  # iterate the bingo board outer array, and iterate the inner array to find if the number in the array

# If the number is in the column, replace with an 'x'
  #fill in the outline here

  # if the number in the array, replace with x, if not, not change

# Display a column to the console
  #fill in the outline here

  # display the column to the console

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard
  
  def initialize(board)
    @bingo_board = board
    @arr = []
  end

  def generator
    @arr.push(['b','i','n','g','o'].sample).push(rand(1..100))
  end

  def checker(letter=@arr[0], number=@arr[1])
    case @arr[0]
    when 'b'
      @bingo_board.each {|sub| sub[0] = "X" if sub[0] == @arr[1]}
    when 'i'
      @bingo_board.each {|sub| sub[1] = "X" if sub[1] == @arr[1]}    
    when 'n'
      @bingo_board.each {|sub| sub[2] = "X" if sub[2] == @arr[1]}
    when 'g'
      @bingo_board.each {|sub| sub[3] = "X" if sub[3] == @arr[1]}
    else
      @bingo_board.each {|sub| sub[4] = "X" if sub[4] == @arr[1]}
    end
  end

  def inspect
    puts "The bingo board:"
    print "["
    @bingo_board.each do |sub|
      print "#{sub}" + "\n"
    end
    print "]"
  end

  def self.board_generator
    puts " B" + "   I" + "   N" + "   G" + "   O"
    puts " *   *   *   *   *"
    bingo_board = [[rand(1..15),rand(16..30),rand(31..45),rand(46-60),rand(61..75)],[rand(1..15),rand(16..30),rand(31..45),rand(46-60),rand(61..75)],[rand(1..15),rand(16..30),rand(31..45),rand(46-60),rand(61..75)],[rand(1..15),rand(16..30),rand(31..45),rand(46-60),rand(61..75)],[rand(1..15),rand(16..30),rand(31..45),rand(46-60),rand(61..75)]]
    
    bingo_board[2][2] = " "
    print "["
    bingo_board.each do |row|
      p row
    end
    print "]" + "\n"
    return bingo_board
  end
end


# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = BingoBoard.board_generator
new_game = BingoBoard.new(board)
letter = new_game.generator[0]
number = new_game.generator[1]
p "#{letter} #{number}"
new_game.checker(letter, number)
new_game.inspect

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

A: I find it is not hard to psedudocode this challenge since it is very logic and clear.

What are the benefits of using a class for this challenge?

A: I think the benefit is that the when we instantialize the class, the method we create can be called directly and no need to write other methods.

How can you access coordinates in a nested array?

A: I can use multiple square brackets.

What methods did you use to access and modify the array?

A: I use each iteration.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

A: I learned each_with_index, group_by, inspect, and inject. Some of them are iterating the array or hash and modify the element, and some of them are print the contents. 

How did you determine what should be an instance variable versus a local variable?

A: instance variable is using @ sign before the variable inside the class and local variable is only available inside the methods. While the instance variable is available across the methods.

What do you feel is most improved in your refactored solution?

A: I think I am using the ruby doc very often and it is very hard to refactor this code.

=end
