# logic

class GuessingGame

def init
    @p1word
    @p2char
    @puzzle
    @unmatched_chars
    @matched_chars
    @total_guesses
    @guesses_left
    @guess_counter
    @all_guessed_chars
    @is_over

def guess_limiter
in: p1word, p2char, unmatched_chars, matched_chars
steps:
  total_guesses = p1word.length
  guesses_left = total_guesses - (unmatched_chars + matched_chars)
out: guesses_left

def guess_counter
in: p2char, guess_count, all_guessed_chars
steps:
  if all_guessed_chars.include? p2char
    puts "You've already guessed this character, try again."
  else
    all_guessed_chars << p2char
    guess_counter += 1
  end
out: guess_counter

def match_checker
in: p1word, p2char, matched_chars, unmatched_chars
steps:
  if   p1word.include? p2char
    matched_chars << p2char
  else !p1word.include? p2char
    unmatched_chars << p2char
  end
out: matched_chars, unmatched_chars

def match_updater
in: matched_chars, puzzle
steps:
  insert_index = p1word.index[p2char]
  puzzle.insert(insertion_index, p2char)
out: puzzle

def per_turn_feedback
in: puzzle, guesses_left, unmatched_chars
steps:
  puts "Unsolved puzzle: #{puzzle.split(" ").to_s}"
  puts "Guesses left: #{guesses_left}"
  puts "Unmatched characters: #{unmatched_chars}"
out: display, guesses_left, unmatched_chars



end

# driver
game = GuessingGame.new.start

def start
in: p1word
steps:
  puts "Welcome to the Guessing Game!"
  puts "Rules: It's like Hangman or Wheel of Fortune, Player 1 enters a secret word & Player 2 guesses it by entering one character at a time."
  puts "P1 enter puzzle word:"
  p1word = gets.chomp.downcase
  puzzle = "_" * p1word.length
  guess_prompter
out: puzzle

def guess_prompter
in:
steps:
  until is_over == true
    puts "Enter a character to guess:"
    p2char = gets.chomp.downcase
    if p2char.count > 1
      puts "Enter only one character at a time."
    end
    match_checker
    match_updater
    per_turn_feedback
    is_over
  end
out: p2char


def is_over
in: p1word, puzzle, guesses_left
steps:
  case
  when guesses_left > 0
    is_over = false
  when guesses_left == 0
    is_over = true
    puts "Gameover! You're out of guesses."    
  when p1word != puzzle
    is_over = false
  when p1word == puzzle
    is_over = true
  puts "You won! The puzzle is solved in #{guess_counter} guesses."
  end
out: is_over

