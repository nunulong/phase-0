# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
  end

  def sides
    # code goes here
    if sides < 1
      raise ArgumentError, "Sides is less than 1."
    else
      return @sides
    end
  end

  def roll
    # code goes here
    return rand(1, @sides)
  end
end



# 3. Refactored Solution







# 4. Reflection