# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_2.each do |x|
    array_1.push(x)
  end
  array_1
end