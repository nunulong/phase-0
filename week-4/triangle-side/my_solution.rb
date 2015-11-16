# I worked on this challenge [by myself, with: ].

# With Gary Tso

# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a == b && b == c
    return true
  elsif a == 0 || b == 0 || c == 0
    return false
  elsif (a == b && c <= a * 2) || (a == c && b <= c * 2) || (b == c && a <= b * 2)
    return true
  elsif a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || c**2 + a**2 == b**2
    return true
  else
    return false
  end
end