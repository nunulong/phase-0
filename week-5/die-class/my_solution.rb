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

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    raise ArgumentError.new("Sides is less than 1") if sides < 1
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(1...(@sides + 1))
  end
end

# 4. Reflection

=begin

What is an ArgumentError and why would you use one?

A: ArgumentError is raised when the arguments are wrong and there isn't a more specific Exception class. Since the argument doesn't meet the demand.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

A: I learned rand, raise, ArgumentError.new methods. I couldn't give the right range of random number at first but I found the problem and fixed it. 

What is a Ruby class?

A: Ruby class is the object that has properties and methods to accomplish some functions and tasks. Ruby has built-in classes and also we can create our own classes.

Why would you use a Ruby class?

A: Since we can finish some tasks by defining our own classes which include ruby built-in classes that are very powerful and flexible to the projects.

What is the difference between a local variable and an instance variable?

A: local variable is effective only inside the methods. Instance variable is effective when you create a new instance from the class method.

Where can an instance variable be used?

A: Instance variable is used in when you finish defining the class and you need to do the specific tasks using the class methods you created just now.

=end
