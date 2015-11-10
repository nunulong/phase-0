# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => A: errors.rb file. 
# 2. What is the line number where the error occurs?
# => A: The line 4.
# 3. What is the type of error message?
# => A: syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => A: The terminal said unexpected end-of-input, expecting keyword_end.
# 5. Where is the error in the code?
# => A: the while loop needs the end keyword.
# 6. Why did the interpreter give you this error?
# => A: The method or while loop need the close end keyword.

# --- error -------------------------------------------------------

south_park = "good"

# 1. What is the line number where the error occurs?
# => A: on line 1.
# 2. What is the type of error message?
# => A: name error.
# 3. What additional information does the interpreter provide about this type of error?
# => A: undefined local variable or method `south_park' for main:Object (NameError).
# 4. Where is the error in the code?
# => A: after the south_park.
# 5. Why did the interpreter give you this error?
# => A: since we need define the value to the local variable south_park.

# --- error -------------------------------------------------------

def cartman()

end

# 1. What is the line number where the error occurs?
# => A: in line 1.
# 2. What is the type of error message?
# => A: no method error.
# 3. What additional information does the interpreter provide about this type of error?
# => A: undefined method `cartman' for main:Object (NoMethodError).
# 4. Where is the error in the code?
# => A: the method cartman() needs to be defined.
# 5. Why did the interpreter give you this error?
# => A: since the method doesn't have the body.

# --- error -------------------------------------------------------

def cartmans_phrase(str)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => A: in the line 1.
# 2. What is the type of error message?
# => A: argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => A: wrong number of arguments (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# => A: the error is in the last line of the method argument. 
# 5. Why did the interpreter give you this error?
# => A: since the method has no argument, but the method is called last with one argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("hello, world!")

# 1. What is the line number where the error occurs?
# => A: on line 1.
# 2. What is the type of error message?
# => A: argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => A: wrong number of arguments (0 for 1) (ArgumentError).
# 4. Where is the error in the code?
# => A: the method is called in the last line.
# 5. Why did the interpreter give you this error?
# => A: since the method has one argument but it is called at last without any argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Mike')

# 1. What is the line number where the error occurs?
# => A: in line 1.
# 2. What is the type of error message?
# => A: argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => A:  wrong number of arguments (1 for 2) (ArgumentError).
# 4. Where is the error in the code?
# => A: the last line the method is called with only one argument.
# 5. Why did the interpreter give you this error?
# => A: since the method is defined with two arguments but it is called with only one argument.

# --- error -------------------------------------------------------

5  "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => A: in line 1.
# 2. What is the type of error message?
# => A: syntax error.
# 3. What additional information does the interpreter provide about this type of error?
# => A: unexpected end-of-input, expecting :: or '[' or '.'
# 4. Where is the error in the code?
# => A: at the beginning of this sentence.
# 5. Why did the interpreter give you this error?
# => since this is not a lawful expression in ruby.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# => A: in line 1.
# 2. What is the type of error message?
# => A: zero division error.
# 3. What additional information does the interpreter provide about this type of error?
# => A: divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
# => A: the error is 20/0.
# 5. Why did the interpreter give you this error?
# => A: since zero cannot be divisor.

# --- error -------------------------------------------------------

require_relative 'errors'

# 1. What is the line number where the error occurs?
# => A: in line 1.
# 2. What is the type of error message?
# => A: load error. 
# 3. What additional information does the interpreter provide about this type of error?
# => A: require_relative': cannot load such file -- /home/amen/Desktop/DBC/phase-0/week-4/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# => A: the error is the file loaded is not existed in the directory.
# 5. Why did the interpreter give you this error?
# => A: since the ruby compiler cannot find the file cartmans_essay.md to load. Also the file name is unlawful.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

1. Which error was the most difficult to read?
A: I think the load error is the most difficult.

2. How did you figure out what the issue with the error was?
A: first, I look up the line that the terminal said. Second, I will position where the error happens. Third, I will give the solution to the error. Lastly, I will test the code before production.

3. Were you able to determine why each error message happened based on the code? 
A: yes, I finally found all the errors and found out how to solve them.

4. When you encounter errors in your future code, what process will you follow to help you debug?  
A: first, I will look up the log that the terminal said and find out where the error happens. Then, I will find the solution to the bugs. After completing the code, make sure to test the code and pass the test. Lastly, put the code to production phase.

=end