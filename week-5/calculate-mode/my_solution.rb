# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

=begin

define an array that takes string or integer
after that we find the matches and count them
return element with highest count

=end

# What is the input?

# A: An array with objects

# What is the output? (i.e. What should the code return?)

# A: output is an array of elements that are mode(s).

# What are the steps needed to solve the problem?

# Count the elements, evaluate which one is most frequent, and then rtur

# 1. Initial Solution

def mode(arr)
  h = {}
  arr.each do |x|
    h[x] = arr.count(x)
  end
  arr = h.values.sort
  highest_count = arr.last
  h.select { |k, v| v == highest_count }.keys
end

# 3. Refactored Solution

def mode(input_array)
  # Create an empty hash to store the mode and frequency
  mode_count = {}
  # Put array elements and frequency into the hash as key value pairs
  input_array.each {|x| mode_count[x] = input_array.count(x)}
  # Sort the frequency by smallest to largest
  input_array = mode_count.values.sort
  # Take the last number in the array which is the highest count
  highest_count = input_array.last
  # Take the keys and value of the element with the highest count and returns the key only
  mode_count.select {|key, value| value == highest_count}.keys
end


# 4. Reflection

=begin
  
Which data structure did you and your pair decide to implement and why?

A: We decide to use hashes and arrays because they were the easiest to sort and we also needed access to key value pairs, which are unique to hashes.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

A: Yes, we were able to break down the problem a little better this time around because we have had more practice with pseudocoding.

What issues/successes did you run into when translating your pseudocode to code?

A: A continuing problem that has arisen when translating the pseudocode is that it never really follows steps that we set out.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

A: We use each and select methods to iterate. We found a few methods we thought might be useful but we decided on each and select for readability.
  
=end