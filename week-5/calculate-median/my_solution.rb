# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def median(arr)
  arr.sort!
  if arr.length % 2 != 0
    return arr[(arr.length - 1) / 2]
  else
    return (arr[arr.length / 2 -1].to_f + arr[arr.length / 2].to_f) / 2
  end
end

# 3. Refactored Solution

def median(arr)
  arr.sort!
  arr.length % 2 != 0 ? arr[(arr.length - 1) / 2] : (arr[arr.length / 2 -1].to_f + arr[arr.length / 2].to_f) / 2
end

# 4. Reflection

=begin

I learn how to use triple operator and how to refactor the code making it more efficient.

=end