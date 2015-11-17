# Create Accountability Groups

# input

# an array of names

# output

# an array of different sub-arrays within which there should be at least 3 names or 4 or 5 names

# Pseudocode

=begin
  
check out the array length
  if length divisible by 4 or 5 
    split names with 4 or 5 into small sub-arrays
  else if length divisible by 3
    split names with 3 into small sub-arrays
  else if length is not divisible by 3,4, or 5
    apart one group with 3, 4, or 5 names from the original array 
    check out if the length of the new array is divisible by 3, 4, or 5
    if it is true
      divide the new array with 3, 4, or 5 names 
    if it is not true
      apart another group from new array and redo the process above 
  
=end