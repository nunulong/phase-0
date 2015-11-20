# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def get_grade(arr)
  sum = arr.inject { |sum, n| sum + n  }
  mean = sum / arr.length 
  if mean >= 90
    return "A"
  elsif mean >= 80
    return "B"
  elsif mean >= 70
    return "C"
  elsif mean >= 60
    return "D"
  else
    return "F"
  end 
end

# 3. Refactored Solution

def get_grade(arr)
  sum = arr.inject { |sum, n| sum + n  }
  mean = sum / arr.length 
  if mean >= 90
     "A"
  elsif mean >= 80
     "B"
  elsif mean >= 70
     "C"
  elsif mean >= 60
     "D"
  else
     "F"
  end 
end

# 4. Reflection

=begin

I learn how to use inject method.

=end