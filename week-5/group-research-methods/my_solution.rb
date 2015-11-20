# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |e| e.to_s.include?(thing_to_find) }
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|k, v| v == thing_to_find }.keys
end

# Identify and describe the Ruby method(s) you implemented.
# For Array: find matching data
# I use select method to give the conditional selection to collect all the targeted elements in the array.
# Inside the curly bracket, I put the condition I need to find the targeted element within which I use include? method.
# Then the whole method will get all the elements I need

# For Hash: find matching data
# I use select and keys methods.
# First, I use select give the conditional selection from hash.
# Second, I put the condition in side the curly bracket. Importantly, since the hash is key-value pair, inside the two pipes, I put two variables that represent key and value. 
# And I give the condition that the value needs to have and that will target the elements I want.
# Since the final result only returns the key array, I choose to use keys method to return all targeted keys in a new array.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#

=begin
Identify and describe the Ruby method(s) you implemented.

Answer:
For Array: find matching data
I use select method to give the conditional selection to collect all the targeted elements in the array.
Inside the curly bracket, I put the condition I need to find the targeted element within which I use include? method.
Then the whole method will get all the elements I need

For Hash: find matching data
I use select and keys methods.
First, I use select give the conditional selection from hash.
Second, I put the condition in side the curly bracket. Importantly, since the hash is key-value pair, inside the two pipes, I put two variables that represent key and value. 
And I give the condition that the value needs to have and that will target the elements I want.
Since the final result only returns the key array, I choose to use keys method to return all targeted keys in a new array.


Teach your accountability group how to use the methods

Answer: select method is one of the enumerable method in ruby that takes a block in the curly bracket. 
We usually use like this: array.select {block of code}. When we run the method, the block will find all the targeted elements at once by iterating the element.
When using the select method to hash, you need to put |key, value| in stead of |element| inside the block, and also to put the condition that is assigned to |key, value|. When running the method, the targeted key-value pair will be found.
If you want to collect all the hash keys and output as an array, please use keys, which just return the key array.

Share any tricks you used to find and decipher the Ruby Docs

Answer: I usually search the keyword in Ruby Docs and read through the code and examples, and try the examples by my own to get familiar with the method.

=end