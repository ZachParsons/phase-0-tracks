# 5.5 Solo Challenge: Manipulating Strings with Iteration

#pseudocode

# - input: ask use for first & last name
#   - downcase fullname
#   - split by space to convert fullname string into firstname & lastname arrays
#   - swap first & last names
# - iterate thru name by character
#   - check if vowel or consonant
#       - if vowel
#         - iterate thru vowels til character == vowel
#         - return vowel index + 1
#       - if consonant
#         - iterate thru consonants til character == consonant
#         - return consonant index + 1
# - rotate cipher for edge instances
# - upcase first char of both names
# - output: alias name

# Logic
agents = {}

def shifter(char)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  vowels = 'aeiou'
  vowels_list = vowels.split('')
  char = char.downcase
  consonants_list = alphabet.split('') - vowels_list

  if !alphabet.index(char)
    ' '
  elsif vowels.include? char
    position = vowels.index(char)
    return vowels_list.rotate(1)[position]
  else 
    consonants_list.rotate(1)[consonants_list.index(char)]
  end
end

def aliaser(name, agents, input)
  char_index = 0
  alias_name = ''

  while char_index < name.length
    alias_name << shifter(name[char_index])
    char_index += 1
  end
  if alias_name.include?(' ') then
    alias_name.split(' ').map { |name| name  }.join(' ')
  else
    alias_name.split(' ')[0]
  end
  agents[input] = alias_name.capitalize
end


# UI
loop do 
  puts "Enter your full name (or 'quit' when done):"
  input = gets.chomp
  break if input == 'quit'
  split_name = input.split(' ')
  invert_name = split_name.reverse.join(' ')
  puts aliaser(invert_name, agents, input)
end
agents.each do |name, nickname|
  puts "#{name} aka #{nickname}"
end