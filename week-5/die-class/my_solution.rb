# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: the number of sides
# Output: the number of sides, the random number between 1 and sides
# Steps:

=begin

initialize the sides
if sides less than 1, raise Argument Error

return the sides number that is initialized

roll the die and get the random number between 1 and sides

=end

# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Sides is less than 1")
    end
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(1...(@sides + 1))
  end
end



# 3. Refactored Solution







# 4. Reflection