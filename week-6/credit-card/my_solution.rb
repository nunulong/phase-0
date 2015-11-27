# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer of 16 digits
# Output: true or false or invalid entry
# Steps:
=begin

make a method that takes an integer 16 digits long
turn that integer into an array seperated into individual numbers
riase an argument error if it's not 16 digits
make a method to check the number based off of luhn's algorithm
Do the math to check it
if it's not right, return it false
if it is, return it true

=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard 
  def initialize(creditcard_number)
      @creditcard_number = creditcard_number.to_s.chars.map(&:to_i)
      @sum = 0 
      raise ArgumentError.new ("Invalid Entry") if @creditcard_number.length != 16
  end

  def check_card 
    @creditcard_number.map!.each_with_index do |number, index| 
      if index % 2 == 0
        number. * 2
      else number 
      end
    end

     p @creditcard_number
     @creditcard_number.map! do |number|
       if number > 9
         number % 10 + 1
       else number
       end
     end   
     @creditcard_number.each do |x| 
       @sum += x 
     end
     p @sum
     if @sum % 10 == 0   
       return true
     else
       return false 
     end
  end
end

creditcard_number = 4408041234567901
credit_card = CreditCard.new (creditcard_number)
p credit_card.check_card

# Refactored Solution

class CreditCard 
  def initialize(creditcard_number)
    @creditcard_number = creditcard_number.to_s.chars.map(&:to_i)
    @sum = 0 
    raise ArgumentError.new ("Invalid Entry") if @creditcard_number.length != 16
  end

  def check_card 
    @creditcard_number.map!.each_with_index do |number, index| 
      if index % 2 == 0
        number * 2
      else number 
      end
    end

    p @creditcard_number
    
    @creditcard_number.map! do |number|
      if number > 9
        number % 10 + 1
      else number
      end
    end   
    
    p @creditcard_number

    @sum = @creditcard_number.reduce(:+)
  
    p @sum

    if @sum % 10 == 0   
      true
    else
      false 
    end
  end
end

creditcard_number = 4408041234567901
credit_card = CreditCard.new creditcard_number
p credit_card.check_card


# Reflection

=begin
  
What was the most difficult part of this challenge for you and your pair?

A: I think the most difficult part is how to choose the right data structure we use to solve this problem. Finally we choose to use array.

What new methods did you find to help you when you refactored?

A: I learn chars, map(&:to_i), each_with_index.

What concepts or learnings were you able to solidify in this challenge?

A: I solidified the enumerable methods, how to transfer integer to array, how to manipulate the array element with iteration methods, how to make condition expressions. Also I learn a lot by looking up the Ruby Docs online. As a future programmer, the documentation is my handbook and reference book that I am always reading and keeping eye on any updating information, knowledge, and technology. 
  
=end