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

def acct_groups(arr)

  num = arr.length
  if num % 5 == 0
    arr.each_slice(5) {|a| p a}
  elsif num % 4 == 0
    arr.each_slice(4) {|a| p a}
  elsif num % 3 == 0
    arr.each_slice(3) {|a| p a}
  elsif (num - 1) % 3 == 0
    arr.each_slice(3) {|a| p a}
  elsif (num + 1) % 3 == 0
    p arr.pop(5)
    arr.each_slice(3) {|a| p a}
  elsif (num - 1) % 4 == 0 || (num + 1) % 4 == 0
    arr.each_slice(4) {|a| p a}
  else
    arr.each_slice(5) {|a| p a}
  end
end

=begin

What was the most interesting and most difficult part of this challenge?

A: I think how to check if the length of the array is divisible by 3, 4, or 5. Also how to split the array to sub-arrays with 3 elements at least for each sub-array.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

A: Yes.

Was your approach for automating this task a good solution? What could have made it even better?

A: I think right now it is the good solution. I think I may D.R.Y this solution a little bit after learning more methods of Ruby.

What data structure did you decide to store the accountability groups in and why?

A: I use array since I only concern the array with multiple names not the key-value pairs. I think array will fulfill the solution.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

A: I learn each_slice and pop methods to refactor my solution. My initial solution uses slice solution and then I print each sub-array.

=end