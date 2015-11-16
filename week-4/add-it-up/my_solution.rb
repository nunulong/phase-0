# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# With Gary Tso

# 0. total Pseudocode
# make sure all pseudocode is commented out!



# Input: array_1: [1, 2, 3, 4, 5, 5, 7], array_2: [4, 4, 5, 5, 6, 6, 6, 7]
# Output: 27, 43
# Steps to solve the problem.

=begin

Pseudocode for the first function

  method(argument)
    iterate the index 
      add each element together
      return result  

=end

# 1. total initial solution

def total(arr)
  index = 0
  total = 0
  while index <= arr.length - 1
    total = total + arr[index]
    index += 1
  end
  return total
end

# 3. total refactored solution

def total(arr)
  total = 0
  arr.each do |e|
    total = total + e
  end
  return total
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: first_sentence ["all", "my", "socks", "are", "dirty"], second_sentence ["alaska", "has", "over", 586, "thousand", "miles"]
# Output: "All my socks are dirty." "Alaska has over 586 thousand miles."
# Steps to solve the problem.

=begin
  
  method(argument)
    iterate the index
      join objects into string
      capitalize first word of sentence
      add period to the end of the sentence
    return full sentence

=end

# 5. sentence_maker initial solution

def sentence_maker(arr)
  index = 0
  sentence = ""
  while index <= arr.length - 1
    a = arr[index].to_s
    sentence << a
    sentence << " "
    index += 1
  end
  sentence.chop!
  sentence << "."
  sentence.capitalize!
  return sentence
end

# 6. sentence_maker refactored solution

def sentence_maker(arr)
  arr.each do |e|
    e.to_s
  end
  sentence = arr.join(" ")
  sentence << "."
  sentence.capitalize!
  return sentence
end

=begin
  
What are methods? Why are they useful?
A: Methods are functions that we can define, which let us have control over code. They're useful because it allow us to execute commands, we can reuse the code in methods, and they allow us to compartmentalize code in bigger projects.

What are local variables? Where are they able to be accessed (HINT: try accessing a local variable outside of a method to see). 
A: Local variables are variables that we assign for our methods. They can be accessed only inside the method they're used in.

What is a method's argument? How would you use that?
A: A method argument is a variable that we assign. We use argument by giving them values.

How does Ruby know what to return in a method?
A: Ruby knows what to return because we can explicitly tell it to, or implicitly based on the code.

What does it mean to iterate (or loop) over arrays or hashes? 
A: To iterate, or loop, over arrays and hashes means that code gets executed for every object or element.

What new Ruby methods did you learn about in this challenge?
A: We learned capitalize, chop, join, to_s, and '<<'.

What did you learn from your pair in this challenge?
A: I learned a lot about string manipulation and how to transfer one type of data to another type of data using for example to_s, to_i. Also we both learned a lot about pseudo-code.

=end