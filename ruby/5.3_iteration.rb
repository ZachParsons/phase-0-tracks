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
#   p "After .each call:"
#   p letters
#   p new_letters

# ###################
# # Release 1: Use each, map, and map!

# # iterate through the hash with .each

# numbers = {1: "one", 2: "two", 3: "three"}
# # .each returns the original array 
# number.each do |digit, word|
#   p "#{digit} is spelled out as #{word}"
# end

# # iterate through the array with .map
# # with .map! to edit in place (the dangerous version)
# letters.map! do |letter|
#   puts letter
# # whatever the last line of the block evaluates to is returned
#   letter.next
# end
# p "After .each call:"
# p letters

# # with .map
# modified_letters = letters.map do |letter|
#   puts letter
# # whatever the last line of the block evaluates to is returned
#   letter.next
# end

# p "After .each call:"
# p letters
# p modified_letters


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

actors.map! do |x|
  x.split(//)
end
p actors

new = roles.each do |x, y|
  puts "#{x}'s best #{y}"
  roles [x] = "ij2"
end

p new



# Release 2: Use the Documentation

p "1)"
def delete_a1
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.delete_if do |x|
    x < 5
  end
  array
end
p delete_a1

def delete_h1
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.delete_if do |x, y|
    y < 5
  end
  hash
end
p delete_h1


p "2)"
def delete_a2
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.keep_if do |x|
    x > 5
  end
  array
end
p delete_a2

def delete_h2
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.keep_if do |x, y|
    y < 5
  end
  hash
end
p delete_h2


p "3)"
def delete_a3
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.select! do |x|
    x < 5
  end
  array
end
p delete_a3

def delete_h3
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.select! do |x, y|
    y < 5
  end
  hash
end
p delete_h3


p "4)"
def delete_a4
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.reject! do |x|
    x < 5
  end
  array
end
p delete_a4

def delete_h4
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.reject! do |x, y|
    y < 5
  end
  hash
end
p delete_h4