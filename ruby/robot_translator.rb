# (separation of concern:) Business Logic

# functional decomposition: using single methods for single functions

def translate_char(char)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  halfway = alphabet.length / 2
  is_cap = (char.upcase == char)
  index_of_char = alphabet.index(char.downcase)
  
  if !index_of_char
    "boing"
  elsif is_cap && index_of_char < halfway
    "bloop"
  elsif is_cap || char == "e"
    "buzz"
  else
    "beep"
  end
end

def translate_phrase(phrase)
  char_index = 0
  translated = ""
  while char_index < phrase.length
    translated << translate_char(phrase[char_index])
    char_index += 1
  end
  translated
end

# test
# puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

# (separation of concern:) User Interface
loop do
  puts "Enter a phrase to translate (or type 'q' for quit):"
  phrase = gets.chomp
  break if phrase == 'q'
  puts translate_phrase(phrase)
end