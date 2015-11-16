# Factorial

# I worked on this challenge [by myself, with: ].

# With Gary Tso

# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
    return 1
  elsif number == 1
    return 1
  elsif number > 1
    total = 1
    (1..number).each do |n| 
      if n <= number
        total = total * n
      end
    end
    return total
  end
end

