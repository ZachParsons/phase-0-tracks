# # 5.2 Arrays and Hashes

# # Release 0: Play with Arrays

# suitcase_items = []

# puts "Welcome to Suitcase Packing Assistant!"

# loop do
#   puts "Enter an item (or type 'exit'):"
#   input = gets.chomp
#   break if input == 'exit'
#   suitcase_items << input
# end

# puts "Here's your packing list:"
# p suitcase_items
# puts "Safe travels!"


# # Release 1: Play with Hashes

# post = {

# # 1.
# # using hash rocket initialization
#   "name" => "John",
#   "address" => "123 Fake St",
#   "email" => "John@gmail.com",
#   "blue" => "cerulean",
#   "wallpaper" => "chevrons",
#   "ombre" => "fierce",
  
# # using symbol for initialization
#   :name => "John",
#   :address => "123 Fake St",
#   :email => "John@gmail.com",
#   :blue => "cerulean",
#   :wallpaper => "chevrons",
#   :ombre => "fierce",

# # using symbol for initialization
#   name: "John Doe",
#   address: "123 Fake St",
#   email: "JohnDoe@gmail.com",
#   blue: "cerulean",
#   wallpaper: "chevrons",
#   ombre: "fierce",
# }

# # driver code

# p post ["name"]
# post ["name"] = "Joe"
# post ["likes"] = 300
# p post
# p post.keys
# p post.values

# # accessing by symbol
# p post [:name]
# post [:name] = "Joe"
# post [:likes] = 300
# # 2.
# post [:hired] = "y"
# p post
# p post.keys
# p post.values

# # 3. What happens if store a key in a variable, then access the hash using the variable? Does it work?
# # store key in variable then access key using the variable, returns key's value
# hired = post [:hired]
# p hired

# # 4. What happens when try an expression like your_hash[:name] + your_hash[:address] (or whatever keys you used)? Does it affect the original hash?
# # concatenates both keys' values, which remain separate as hash keys
# p post[:name] + post[:address]

# # 5. 
# # Q1 what happens if you use a logical statement for a key/value?
# # the hash always takes the second of the && statement for keys & values
# hash5_1 = {
#   "key1" => "value1",
#   ("key2" && "key3") => "value2",
#   "key4" => ("value3" && "value4"),
#   ("key5" && "key6") => ("value5" && "value6"),
# }
# p hash5_1

# # Q2 what happens if you use a control expression for a key/value?
# # it breaks
# hash5_2 = {
#   "key1" => "value1",
#   (if (1 != 1) end) => "value2",
#   "key2" => (for 1 in [0..5] p "value3" end),
#   (while (1 = 1) p "key3" end) => "value4",
# }
# p hash5_2

# # Q3 what happens if you call a method for a key/value?
# # the hash takes the method calls & runs the methods as keys & values
# def method1
#   p "m1"
# end

# def method2
#   p "m2"
# end

# def method3
#   p "m3"
# end

# def method4
#   p "m4"
# end

# hash5_3 = {
#   "key1" => "value1",
#   method1 => "value2",
#   "key2" => method2,
#   method3 => method4,
# }
# p hash5_3

# # Q4 What happens if you use an array for a key/value?
# # the hash takes the arrays & runs them as keys & values
# array1 = [1,2,3]
# array2 = ["a", "b", "c"]
# array3 = [true, false, nil]
# array4 = [1.2, 3.4, 5.6]

# hash5_4 = {
#   "key1" => "value1",
#   array1 => "value2",
#   "key2" => array2,
#   array3 => array4,
# }
# p hash5_4


###############################################################################
# Release 3: Use a Hash in a Program

# pseudocode

# - start survey
#   - ask name
#     - convert to string
#     - assign value to hash key
#   - ask age
#     - convert to float
#     - assign value to hash key
#   - ask children
#     - convert to integer/fixnum
#     - assign value to hash key
#   - ask decor
#     - convert to boolean
#     - assign value to hash key
# - ask to update a key
#   - if replay is "none" skip
#   - else reassign key's value
# - print the last version of the hash

# Logic & UI

client_profile = {
  name: "",
  age: 0.0,
  children: 0,
  theme: "",
}

p "What's your name?"
client_profile [:name] = gets.chomp

p "What's your age?"
client_profile [:age] = gets.chomp

p "How many children do you have?"
client_profile [:children] = gets.chomp

p "What decor theme do you want?"
client_profile [:theme] = gets.chomp

p "Want to change any of your answers? (enter 'name', 'age', 'children', 'theme', or 'none')"
update = gets.chomp

case 
when update == "name"
  p "What's your name?"
  client_profile [:name] = gets.chomp
when update == "age"
  p "What's your age?"
  client_profile [:age] = gets.chomp
when update == "children"
  p "How many children do you have?"
  client_profile [:children] = gets.chomp
when update == "decor"
  p "What decor theme do you want?"
  client_profile [:theme] = gets.chomp
when update == "none"
  p "OK, here's your profile:"
end

p client_profile
