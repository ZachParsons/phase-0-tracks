# #logic

# class methods
# init

# match char?
# input: P1 string, char
# do: is P2w in P1w?
#   split P1 string into a words array & each into chars arrays 
#   add char to array
#   if char already exists in char array
#     p “already guessed try again”
#   else add guess count +1
#   if P2 char is in P1w
#   P1w - matched chars = chars left
# output: matched chars, chars left

# number of guesses
# input: available guesses, guesses made
# do: available guesses = P1 string char count *2 
# available guesses - guesses made = guesses left
# output: guesses left

# display correct chars
# input: P1w, matched chars
# do: p all chars of P1w as blank “_”
#   replace blanks at index with matched chars
# output: blanks, matched chars

# endgame response
# input: guess count, chars left
# do: while guesses left > 0
#     if chars left = 0 => congrats
#     if chars left > 0 => taunt
# output: response, guesses made, guesses left


class Game
  attr_accessor :word, :char, :guessed_chars, :blanks, :remaining_guesses

  def initialize(word)
    @word = word
    @char = char
    @guessed_chars = []
    @blanks = "_" * word.length
    @remaining_guesses = available_guesses - guessed_chars.count
    p "initializing new game ..."
  end

  def match_char(word, char)
    if guessed_chars.include? char
      p "that char has already been guessed"
      guessed_chars << char
      if !word.include? char
        p "char not in puzzle"
      elsif word.include? char
        p guessed_chars.count
        p blanks.insert(word.index(char), char)
      end
    end
    guessed_chars
    remaining_guesses
    blanks
  end


  # def guesses(available_guesses, guessed_chars)
  #   p remaining_guesses = available_guesses - guessed_chars.count
  # end

  # def displayed_puzzle(word, blanks, guessed_chars)
  #   blanks = "_" * word.length
  #   p blanks.insert(word.index(char), char)
  # end

  def endgame(guessed_chars, remaining_guesses)
    if (remaining_guesses > 0) && (!blanks.include? "_")
        p "You won! You solved the puzzle, & get to start the next round."
    elsif (remaining_guesses == 0) && (blanks.include? "_")
      p "Gameover! *puts finger & thumb in shape of 'L' on forehead*"
    end
  end

end
#driver / UI
# match_char("basket", "s")

p "Let's play a game like Hangman or Wheel of Fortune. Player 1 enters a secret word & Player 2 guesses it by entering one character at a time."
p "Player 1, enter your secret word:"
word = gets.chomp.downcase
game = Game.new(word)
until remaining_guesses == 0 || !blanks.include? "_"
  p "Player 2, enter a character:"
  char = gets.chomp.downcase
  p "Here's what you've got so far: #{blanks}"
  p "You have #{remaining_guesses} tries left."
end







