# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

# An array of integers, a minimum size, and an optional pad

# What is the output? (i.e. What should the code return?)

# An array with an optional pad

# What are the steps needed to solve the problem?

# Take the length of the arra and make sure it meets the minimum size of requirement

#  if it doesn't, we return an array with padding

# if it does, we return the original array

=begin

write destructive method that takes array of minimum size
non negative integers as arguments that is minimum size for array
optional argument for padding

write non-destructive method that takes array of minimum size
non negative integers as arguments that is minimum size for array
optional argument for padding

=end
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    return array
  else
    (min_size - array.length).times do
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.clone
  if new_array.length >= min_size
    return new_array
  else
    (min_size - new_array.length).times do
      new_array << value
    end
    return new_array
  end
end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    array
  else
    (min_size - array.length).times {array.push(value)}
    array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  padded_array = array.clone
  if padded_array.length >= min_size
    padded_array
  else
    (min_size - padded_array.length).times {padded_array << value}
    padded_array
  end
end

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?
A: Yes. We were very successful in breaking the problem down into small steps. We took turns discussing what steps were needed and how to break them down into smaller steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
A: We ran into some trouble with translating the pseudocode into actual code because some steps were unnecessary and we skipped them.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
A: Our initial solution wasn't successful in passing the tests. We encountered errors of not padding to the end of the array and the non destructive operation was a failure. To resolve the issue, we used a different method to pass the non destructive test and that also solved the padding problem.

When you refactored, did you find any existing methods in Ruby to clean up your code?
A: No, as we used the methods we thought were best. However, we did manage to speed up the execution of the code.

How readable is your solution? Did you and your pair choose descriptive variable names?
A: The solution is very readable. We chose variable names that seemed most descriptive.

What is the difference between destructive and non-destructive methods in your own words?
A: The difference between destructive and non destructive methods is the destructive method permanently changes the array, whereas the non destructive method leaves the original intact. The destructive method refers to the existing memory block for the original array, while the non destructive method has a second copy on a different memory block.
=end