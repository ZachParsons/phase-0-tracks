letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "Original data:"
p letters
p new_letters

# iterate through the array with .each
letters.each do |letter|
  new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

#################

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# iterate through the hash with .each

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}"4
end
