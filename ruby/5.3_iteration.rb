# 5.3 Mandatory Pairing: Iteration
# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters

# # .each is best for looping through & printing, or looping & adding to a sum, not modifying (.map)
# # iterate through the array with .each, which won't modify items inside its block
# letters.each do |letter|
#     puts letter
# # only way to not-really-modify objects in array with .each is by adding them to a new array 
#     new_letters << letters.next
#   end
#   puts "After .each call:"
#   p letters
#   p new_letters

# ###################
# # Release 1: Use each, map, and map!

# # iterate through the hash with .each

# numbers = {1 => "one", 2 => "two", 3 => "three"}
# # .each returns the original array 
# numbers.each do |digit, word|
#   puts "#{digit} is spelled out as #{word}"
# end
# =>
# 1 is spelled out as one
# 2 is spelled out as two
# 3 is spelled out as three

# # iterate through the array with .map
# # with .map! to edit in place (the dangerous version)
# letters.map! do |letter|
#   puts letter
# # whatever the last line of the block evaluates to is returned
#   letter.next
# end
# =>
# a
# b
# c
# d
# e

# puts "After .each call:"
# p letters
# => After .each call:
# ["b", "c", "d", "e", "f"]

# # with .map
# modified_letters = letters.map do |letter|
#   puts letter
# # whatever the last line of the block evaluates to is returned
#   letter.next
# end
# =>
# b
# c
# d
# e
# f

# puts "After .each call:"
# p letters
# p modified_letters
# => After .each call:
# ["b", "c", "d", "e", "f"]
# ["c", "d", "e", "f", "g"]


actors = [
  "Harrison Ford",
  "Sean Connery",
  "Michael Keaton",
  "Sigourney Weaver"
]

roles = {
  "Harrison Ford": "Indiana Jones",
  "Sean Connery": "James Bond",
  "Michael Keaton": "Batman",
  "Sigourney Weaver": "Ellen Ripley"
}


actors.each do |x|
puts x
end

# =>
# Harrison Ford
# Sean Connery
# Michael Keaton
# Sigourney Weaver

actors.map! do |x|
  x.split(//)
end
p actors

# => [["H", "a", "r", "r", "i", "s", "o", "n", " ", "F", "o", "r", "d"], ["S", "e", "a", "n", " ", "C", "o", "n", "n", "e", "r", "y"], ["M", "i", "c", "h", "a", "e", "l", " ", "K", "e", "a", "t", "o", "n"], ["S", "i", "g", "o", "u", "r", "n", "e", "y", " ", "W", "e", "a", "v", "e", "r"]]

new = roles.each do |x, y|
  puts "#{x}'s best #{y}"
  roles [x] = "ij2"
end

# =>
# Harrison Ford's best Indiana Jones
# Sean Connery's best James Bond
# Michael Keaton's best Batman
# Sigourney Weaver's best Ellen Ripley


# Release 2: Use the Documentation

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
puts "1."
def delete_a1
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.delete_if do |x|
    x < 5
  end
  array
end
p delete_a1
# => [5, 6, 7, 8, 9]

def delete_h1
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.delete_if do |x, y|
    y < 5
  end
  hash
end
p delete_h1
# => {:f=>5, :g=>6, :h=>7, :i=>8, :j=>9}

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
puts "2."
def delete_a2
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.keep_if do |x|
    x > 5
  end
  array
end
p delete_a2
# => [6, 7, 8, 9]

def delete_h2
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.keep_if do |x, y|
    y < 5
  end
  hash
end
p delete_h2
# => {:a=>0, :b=>1, :c=>2, :d=>3, :e=>4}

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
puts "3."
def delete_a3
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.select! do |x|
    x < 5
  end
  array
end
p delete_a3
# => [0, 1, 2, 3, 4]

def delete_h3
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.select! do |x, y|
    y < 5
  end
  hash
end
p delete_h3
# => {:a=>0, :b=>1, :c=>2, :d=>3, :e=>4}

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
puts "4."
def delete_a4
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.reject! do |x|
    x < 5
  end
  array
end
p delete_a4
# => [5, 6, 7, 8, 9]

def delete_h4
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.reject! do |x, y|
    y < 5
  end
  hash
end
p delete_h4
# => {:f=>5, :g=>6, :h=>7, :i=>8, :j=>9}
