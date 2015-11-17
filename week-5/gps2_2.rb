# Pseudocode

=begin
  
new_list
  
  set the default quantity with 0
  print new_list
  output a hash

end

add_item(item_name, quantity, hash)

end

remove_itme(item_name, hash)

end

update_item(item_name, new_quantity, hash)

end

print_list(hash)

end

=end

# Our solution below

# create a new hash
def create_hash
  h = {}
end

# add new item to the hash
def add_item(item_name, quantity, h)
  h[item_name] = quantity
end

# remove existing item in hash
def remove_item(item_name, h)
  h.delete(item_name)
end

# update the item in hash
def update_item(item_name, new_quantity, h)
  h[item_name] = new_quantity
end

# print list
def print_list(h)
  h.each do |key, value|
    puts "#{key}: #{value}"
  end
end

hash = create_hash

add_item("Lemonade", 2, hash)
add_item("Tomatoes", 3, hash)
add_item("Onions", 1, hash)
add_item("Ice Cream", 4, hash)

remove_item("Lemonade", hash)

update_item("Ice Cream", 1, hash)

print_list(hash)

=begin 

What did you learn about pseudocode from working on this challenge?

A: I learned that when we create a good pseudocode, it is very helpful to produce the new code.

What are the tradeoffs of using Arrays and Hashes for this challenge?

A: Using arrays in this challenge is very hard since each item has a quantity property. We need to create a multi-dimension array to finish this problem. Whereas, using hash is very easy since we can easily target the item we need. We don't iterate the element in the hash.

What does a method return?

A: The method return the modification of the hash.

What kind of things can you pass into methods as arguments?

A: We can pass everything into the method.

How can you pass information between methods?

A: We use the global variable to communicate between each method. 

What concepts were solidified in this challenge, and what concepts are still confusing?

A: I reviewed the hash property and some of the methods hash have. I think the symbol and string is the new concept I just encountered today since when I did the research on Google, I found this accidentally.

=end