# GPS 2.2 - Ruby

# DRY = "Don't Repeat Yourself"

# Release 0: Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash
  # split string into items of hash
  # put item into hash
  # set default quantity
  # call print method to print the list to the console
# output: hash list

# Method to add an item to a list
# input: hash list, item name, optional quantity
# steps:
  # add item as key
  # add quantity of item as value
  # call print method
# output: hash list

# Method to remove an item from the list
# input: hash list, item
# steps:
  # delete item from list
# output: hash list

# Method to update the quantity of an item
# input: hash list, item to update, updated quantity
# steps:
  # change hash values
# output: hash list

# Method to print a list and make it look pretty
# input: hash list
# steps:
  # format the list for readability, each item & quantity on its own line, list isolated with lines
  # iteration for all items & quantities
# output: printing the formatted list

# Release 1: Initial Solution
# Release 3: Refactor

def create_list(string)
  list = {}
  items_array = string.split(' ')
  items_array.each do |i|
    list[i] = 1
  end
  list
end

def add_item(list, item, quantity)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(list)
  list.each {|item, quantity| puts "grocery item: #{item} x #{quantity}"}
end

# test_list = create_list("carrots apples cereal pizza")
# add_item(test_list, "banana", 3)
# remove_item(test_list, "cereal")
# update_quantity(test_list, "pizza", 10)
# print_list(test_list)


# Release 2: Test your solution
r2_list = create_list("lemonade tomatoes onions ice-cream")
update_quantity(r2_list, "lemonade", 2)
update_quantity(r2_list, "tomatoes", 3)
update_quantity(r2_list, "ice-cream", 4)
remove_item(r2_list, "lemonade")
update_quantity(r2_list, "ice-cream", 1)
print_list(r2_list)


# Release 4: Reflect
# # What did you learn about pseudocode from working on this challenge?
# I practiced functional decomposition of a program into separate dedicate behaviors by making multiple methods for creating, adding, removing, updating, printing a hash.

# # What are the tradeoffs of using arrays and hashes for this challenge?
# The tradeoff of using a hash is the ability to store items names as keys & their quantities as values, whereas arrays would be better suited for a ranked/prioritized list.

# # What does a method return?
# A method returns what its body evaluates to, which can involve the other methods' returns. 

# # What kind of things can you pass into methods as arguments?
# Arguments passed into method parameters can be any data type & comparatively small variables or large data structures.

# # How can you pass information between methods?
# Passing information between methods can be done by creating variables to compare with multiple method returns,
# also data structures with global scope allowing access by multiple methods allow their interaction.

# # What concepts were solidified in this challenge, and what concepts are still confusing?
# Concepts we solidified in this challenge were method chaining & functional decomposition.
