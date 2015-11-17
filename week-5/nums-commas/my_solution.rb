# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

# Input is the integer

# What is the output? (i.e. What should the code return?)

# Output is the input integer with separate comma

# What are the steps needed to solve the problem?

=begin
  
 check out if the input integer is less than 1000
  if true
    return integer without comma
  if greater than or equal to 1000 but less than 10000
    return integer with one comma
  if greater than or equal to 10000 but less than 100000
    return integer with one comma
  if greater than or equal to 100000 but less than 1000000
    return integer with one comma
  if greater than or equal to 1000000 but less than 10000000
    return integer with two comma
  if greater than or equal to 10000000 but less than 100000000
    return integer with two comma
  
=end

# 1. Initial Solution

def separate_comma(num)
  str = num.to_s
  if str.length.between?(1, 3)
    return str
  elsif str.length == 4
    return str.insert(1, ",")
  elsif str.length == 5
    return str.insert(2, ",")
  elsif str.length == 6
    return str.insert(3, ",")
  elsif str.length == 7
    return str.insert(1, ",").insert(-4, ",")
  else 
    str.length == 8
    return str.insert(2, ",").insert(-4, ",")
  end    
end

# 2. Refactored Solution

def separate_comma(num)
  str = num.to_s
  if str.length.between?(1, 3) then return str end

  case str.length
  when 4 then str.insert(1, ",")
  when 5 then str.insert(2, ",")
  when 6 then str.insert(3, ",")
  when 7 then str.insert(1, ",").insert(-4, ",")
  when 8 then str.insert(2, ",").insert(-4, ",")
  end    
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# Answer: My process is to check out the length of the number, and then determining if the comma is needed or not. I consider the string manipulation and number calculation.

# Was your pseudocode effective in helping you build a successful initial solution?

# Answer: Yes, absolutely helpful.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# Answer: I learned between?, insert, and case. I usually look through the ruby docs to find the suitable methods it provides and refactor the code with new methods and test the code afterwards. Usually, the code is working better since it takes less time to execute.

# How did you initially iterate through the data structure?

# Answer: I follow the pseudocode and find the logical method to solve the problem.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Answer: Yes, I think my refactored solution is very simple to understand since the data structure is very easy to read and understandable.