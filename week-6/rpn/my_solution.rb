# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class RPNCalculator
  # Define your methods, here!
  def initialize()
    @arr = []
    @arr_1 = []
  end

  def evaluate(rpn_expression)
    @arr = rpn_expression.split(" ")
    @arr.each do |e|
      if e != "+" && e != "-" && e != "*"
        @arr_1.push(e)
      elsif e == "+"
        @arr_1.push(@arr_1.pop.to_i + @arr_1.pop.to_i)
      elsif e == "-"
        @arr_1.push(-(@arr_1.pop.to_i) + @arr_1.pop.to_i)
      else 
        @arr_1.push(@arr_1.pop.to_i * @arr_1.pop.to_i)
      end
    end
    @arr_1[0].to_i
  end
end

arr = "2 4 + 4 -"
cal = RPNCalculator.new
p cal.evaluate(arr)
# 4. Refactored Solution






# Reflection