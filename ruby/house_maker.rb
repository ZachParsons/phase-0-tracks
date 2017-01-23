# House Maker

# Allow the user to create a house,
# then add rooms
# then items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# dangerous methods designated with bang <!>, dangerous meaning modify data that's in the global scope

# BUSINESS LOGIC

def parse_room_input(inputted_name)
  # clean up input
end

def add_room_to_house!(house, room_name)
  if house.keys.length == 5
    false
  else
    house[room_name] = []
    true
  end
end

def add_item_to_room!(house, room_name, item_name)
  # p "inside item addition method, the hash is: "
  # p house
  house[room_name] << item_name
end

house = {}


# USER INTERFACE

def print_house(house)
  p "-" * 20
  p "current house configuration:"
  house.keys.each_with_index do |room_name, index|
    p "#{index} - #{room_name}: #{house[room_name]}"
  end
  p "-" * 20
end

# Lets use adds rooms
can_add_rooms = true

# Stop loop when rooms cannot be added
while can_add_rooms

  # Get a room name form the user
  p "Enter the name of a room to add (or type 'done'):"
  room_name = gets.chomp

  # If the user is done, stop loop
  break if room_name == 'done'

  # Otherwise, add the room to the house
  can_add_rooms = add_room_to_house!(house, room_name)
  if !can_add_rooms
    p "Sorry, that's too many rooms!"
  end
  print_house(house)
end

# Let the user add items to rooms
# In an infinite loop:
loop do
  # Ask the user for the number of the room they want to add items to
  p "Enter the number of the room to add an item to (or type 'done'):"
  inputted_idx = gets.chomp

  # If the user is done, break (with a sentinel value)
  break if inputted_idx == 'done'

  # Otherwise, add the item to the room
  room_idx = inputted_idx.to_i
  p "Enter the item to add: "
  item_to_add = gets.chomp
  add_item_to_room!(house, house.keys[room_idx], item_to_add)

  # Print the new house configuration
  print_house(house)
end

# Test code: initializations, definitions, prints, calls,

rooms = ["living room", "bedroom 1", "bathroom", "kitchen", "bedroom 2", "bedroom 3"]

rooms.each do |room|
  room_added = add_room_to_house!(house, room)
  add_item_to_room!(house, room, "cat") if room_added
end

print_house(house)


# def change_bool(bool)
#   bool = !bool
# end

# # these evaluations do NOT persist outside of method scope
# def change_num(x)
#   x += 1
# end

# # these evaluations DO persist outside of method scope, bc default for all arrays
# def change_arr(arr)
#   arr << 1
# end

# test_bool = true
# n = 5
# test_array = [2, 3, 4]

# p test_bool
# p n
# p test_array

# change_num(n)
# change_arr(test_array)
# change_bool(test_bool)

# p test_bool
# p n
# p test_array