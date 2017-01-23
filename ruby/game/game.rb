# #logic

# class methods
# init

# match char?
# input: P1 string, P2char
# do: is P2w in P1w?
#   split P1 string into a words array & each into chars arrays 
#   add P2char to array
#   if P2char already exists in P2char array
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
  attr_reader: :guessed_chars, :blanks, :remaining_guesses
  attr_accessor: :p1word, :p2char

  def initialize(p1word)
    @p1word = p1word
    @p2char = p2char
    @guessed_chars = []
    @blanks = "_" * p1word.length
    @remaining_guesses = available_guesses - guessed_chars.count
    p "initializing new game ..."
  end

  def match_char(p1word, p2char)
    if guessed_chars.include? p2char
      p "that char has already been guessed"
      guessed_chars << p2char
      if !p1word.include? p2char
        p "char not in puzzle"
      elsif p1word.include? p2char
        p guessed_chars.count
        p blanks.insert(p1word.index(p2char), p2char)
      end
    end
    guessed_chars
    remaining_guesses
    blanks
  end


  # def guesses(available_guesses, guessed_chars)
  #   p remaining_guesses = available_guesses - guessed_chars.count
  # end

  # def displayed_puzzle(p1word, blanks, guessed_chars)
  #   blanks = "_" * p1word.length
  #   p blanks.insert(p1word.index(p2char), p2char)
  # end

  def endgame(guessed_chars, remaining_guesses)
    if remaining_guesses > 0 && !blanks.include? "_"
        p "You won! You solved the puzzle, & get to start the next round."
    else remaining_guesses == 0 && blanks.include? "_"
        p "Gameover! *puts finger & thumb in shape of 'L' on forehead*"
    end
  end

end
#driver / UI
# match_char("basket", "s")

p "Let's play a game like Hangman or Wheel of Fortune. Player 1 enters a secret word & Player 2 guesses it by entering one character at a time."
p "Player 1, enter your secret word:"
p1word = gets.chomp.downcase
game = Game.new(p1word)
until remaining_guesses == 0 || !blanks.include? "_"
  p "Player 2, enter a character:"
  p2char = gets.chomp.downcase
  p "Here's what you've got so far: #{blanks}"
  p "You have #{remaining_guesses} tries left."
end







