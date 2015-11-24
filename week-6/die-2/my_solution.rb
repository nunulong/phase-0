# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array with letters
# Output: Calling the roll method return letters
# Steps: 

=begin

initialize labels
given an condition that the labels is an empty array, raise ArgumentError
finish up the sides method that represent the length of the array
finish up the roll method, give random letter when calling roll method or give all possible letters if label is big.

=end

# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels.length == 0
      raise ArgumentError.new("Label is empty.") 
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle[rand(0..(@labels.length - 1))]
  end
end

# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Label is empty.") if @labels.empty?
  end
  def sides
    @labels.length
  end
  def roll
    @labels.shuffle[rand(0..(@labels.length - 1))]
  end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# A: The main difference is that this die class accepts an array, while last die class accepts an integer.

# What does this exercise teach you about making code that is easily changeable or modifiable? 

# A: I think I will divide the data model and code logic so that once you change your data structure, it doesn't affect your logic.

# What new methods did you learn when working on this challenge, if any?

# A: I learn empty? method since usually I will check the length of the array not using empty? method.

# What concepts about classes were you able to solidify in this challenge?

# A: I think I am more confident to create a class with data structure and built-in methods. Also I am clearer about the class variable and instance variable.