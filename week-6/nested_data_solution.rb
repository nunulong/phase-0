# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|e| e + 5}
  else
    element + 5
  end
end 

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  if name.kind_of?(Array)
    name.map! do |n|
      if n.kind_of?(Array)
        n.map! {|x| x<<"ly"}
      else n<<"ly"
      end
    end
  else name<<"ly"
  end
end

=begin
  
What are some general rules you can apply to nested arrays?

A: They can still be iterated over. Index calling still works. We can modify the every element (e.g. create, add, delete, sort). 

What are some ways you can iterate over nested arrays?

A: We use index and enumerable methods to iterate arrays. We can still loop over them also.

Did you find any good new methods to implement or did you re-use one you were already familiar with? 
What was it and why did you decide that was a good option?

A: We use kind_of? for the first time to check to see if it is an array. We re-use map! several times. We felt it is the best option for what we needed to do.
  
=end