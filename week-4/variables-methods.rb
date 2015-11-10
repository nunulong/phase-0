puts "What is your first name?"

first = gets.chomp

puts "What is your middle name?"

middle = gets.chomp

puts "What is your last name?"

last = gets.chomp

puts "Hello, #{first} #{middle} #{last}"


puts "What is your favorite number?"

num1 = gets.chomp.to_i

num2 = num1 + 1

puts "The #{num2} is bigger and better number than #{num1}."

=begin

1. How do you define a local variable?
  A: I just define a local variable inside the block of code or a method.

2. How do you define a method?
  A: I define a method using def and end and put local variable in the method.

3. What is the difference between a local variable and a method?
  A: Local variable is just a parameter that does not have any function, whereas a method contains local variable and complete some tasks.

4. How do you run a ruby program from the command line?
  A: I type ruby and plus the ruby file name.

5. How do you run an RSpec file from the command line?
  A: I type rspec and plus the spec file name.

6. What was confusing about this material? What made sense?
    I think this material is pretty clear and the local variable and method are very useful.
    
=end