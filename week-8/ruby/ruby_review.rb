# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
=begin

input the bingo board 
compare the bingo board with the win situation 
if they are same, you win the game
otherwise you lose

=end

# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

inside_corners = [[47, 44, 71, 8, 88],
                  [22, 'x', 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 'x', 51],
                  [19, 70, 54, 80, 83]]



# Initial Solution
class BingoScorer

  #your code here
  def initialize(bingo_board) 
    @bingo_board = bingo_board
  end

  def checker
    j = @bingo_board.length - 1

    @bingo_board.each do |sub_board| 
      if sub_board.count('x') == 5
        puts "BINGO!"
      end
    end

    @bingo_board.transpose.each do |sub_board|
      if sub_board.count('x') == 5
        puts "BINGO!"
      end
    end

    if (0..j).collect {|i| @bingo_board[i][i]}.count('x') == 5
      puts "BINGO!"
    elsif (0..j).collect {|i| @bingo_board[i][j - i]}.count('x') == 5
      puts "BINGO!"
    end

    sum = (1..3).collect {|i| @bingo_board[i][i]}.count('x') + (1..3).collect {|i| @bingo_board.transpose[i][i]}.count('x')
    if sum - 1 == 5
      puts "BINGO!"
    end

  end
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

game1 = BingoScorer.new(horizontal)
game1.checker

game2 = BingoScorer.new(vertical)
game2.checker

game3 = BingoScorer.new(right_to_left)
game3.checker

game4 = BingoScorer.new(left_to_right)
game4.checker

game5 = BingoScorer.new(inside_corners)
game5.checker
# Reflection


# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  # separate the input string into array
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.

  # assign a empty array for decoded output
  decoded_sentence = []

  # this is the decoding code shifting 4 letters
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            # hash is not the best way since we don't need this big hash but an array instead.
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
  # find the matching letter using each iteration
  input.each do |x| # What is #each doing here?
    # initialize the found_match with value false 
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? 
    # because this is a flag to 
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
      # this is to compare the input letter with the cipher code. X is gotten from input array and y is gotten from the cipher code. X is the input letter and y is cipher letter.
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
        # because it is finding the matching letter so just jumping out of the looping
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        # it is converting the number to array
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      # this is looking for if not finding the matching letter, push the letter to the new array
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
  # it returns a string
end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  
  input = coded_message.downcase.split("") 

  decoded_sentence = []

  cipher = {}
  shift = 4
  alpha = ("a".."z").to_a
  alpha1 = alpha.rotate(shift)
  alpha1.each do |x|
    cipher[x] = alpha[alpha1.index(x)]
  end
  
  input.each do |encoded_letter| 
    found_match = false  
    cipher.each do |code, decoded_letter| 
      if encoded_letter == code
        decoded_sentence << decoded_letter
        found_match = true
        break
      elsif ["@", "#", "$", "%", "^", "&", "*"].include?(encoded_letter) 
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(encoded_letter) 
        decoded_sentence << encoded_letter
        found_match = true
        break
      end
    end
    if !found_match  
      decoded_sentence << encoded_letter
    end
  end
  decoded_sentence = decoded_sentence.join("")
end


# letter shifting method 
def letter_convert(sentence, shift)
  cipher = {}
  alpha = ("a".."z").to_a
  alpha1 = alpha.rotate(shift)
  alpha1.each do |x|
    cipher[x] = alpha[alpha1.index(x)]
  end
  cipher
  sentence.each_char do |character|
    cipher.each do |key, value|
      if character == key
        sentence.gsub!(character, value)
      end
    end
  end
  sentence
end

puts letter_convert("m^aerx%e&gsoi!", 4)
    

def convert_punc(sentence)
  sentence.each_char do |encoded_letter|
    ["@", "#", "$", "%", "^", "&", "*"].each do |character| 
      if encoded_letter == character
        sentence.gsub!(encoded_letter, " ")
      end
    end
  end
  sentence
end

puts convert_punc("m^aerx%e&gsoi!")


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

=begin

assign first two fibonacci numbers that are 0 and 1
next third number should be the sum of the first two numbers and so on and so forth
we can calculate whatever fibonacci number we want 
given the input number, we need to compare it with the fibonacci number we generate from the function
if the number is equal to fibonacci, that means this number is fibonacci, otherwise not
  
=end

# Initial Solution

def is_fibonacci?(num)
  fibonacci(num, first=0, second=1) == num
end

def fibonacci(num, first=0, second=1)
  if first + second <= num
    fibonacci(num, second, first + second) 
  else
    second
  end
end

puts fibonacci(84747483837)
puts is_fibonacci?(344455)

# Refactored Solution

# Reflection


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

=begin

iterate the array and get each number
use each number to check if it is divisible by 3, 5, or 15
if divisible by 3, this number is replaced by Fizz
if divisible by 5, this number is replaced by Buzz
if divisible by 15, this number is replaced by FizzBuzz

=end

# Initial Solution

def super_fizzbuzz(array)
  array.map! {|x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 3 == 0
      x = "Fizz"
    elsif x % 5 == 0
      x = "Buzz"
    else
      x
    end
  }
  array
end

puts super_fizzbuzz([1,3,4,5,6,15,4,6,7,5,4,3,4])

# Refactored Solution

# Reflection

# Reflection
# Keep your reflection limited to 10-15 minutes!

=begin
  
What concepts did you review or learn in this challenge?

A: I review the recursion, enumerable, string, array, if-else workflow, and function concept.

What is still confusing to you about Ruby?

A: I think I still need to learn more ruby methods to make my code clean and DRY

What are you going to study to get more prepared for Phase 1? 

A: I am going to review all the textbooks about ruby, javascript, html, and css.
  
=end