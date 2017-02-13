class GuessingGame
  attr_accessor :p1word, :p2char, :puzzle, :unmatched_chars, :total_guesses, :guesses_left, :guess_count, :all_guessed_chars, :is_over
  
  def initialize(p1word)
    @p1word = p1word
    @p2char = p2char
    @puzzle = "_" * p1word.length
    @unmatched_chars = []
    @matched_chars = []
    @total_guesses = p1word.length
    @guess_count = 0
    @guesses_left = @total_guesses - @guess_count
    @all_guessed_chars = []
    @is_over = false
  end
  
  def guess_prompter()
    puts "P2 Enter a character to guess:"
    @p2char = gets.chomp.downcase
    if @p2char.length > 1
      puts "P2 Enter only one character at a time."
    end
    guess_counter
  end
  
  def guess_counter()
    if @all_guessed_chars.include?(@p2char)
      puts "P2 has already guessed this character, try again."
      per_turn_feedback
    else
      @all_guessed_chars << @p2char
      @guess_count += 1
      match_checker
    end
  end
  
  def match_checker()
    if   @p1word.include? @p2char
      @matched_chars << @p2char
      puzzle_updater
    else !@p1word.include? @p2char
      @unmatched_chars << @p2char
      puts "P2's guessed character is not in the puzzle, try again."
      per_turn_feedback
    end
  end
  
  def puzzle_updater()
    index = 0
    @p1word.each_char do |c|
      if c == @p2char
        @puzzle[index] = @p2char
      end
      index +=1
    end
    per_turn_feedback
  end
  
  def per_turn_feedback()
    puts "Puzzle: #{@puzzle}"
    puts "Guesses left: #{@total_guesses - @guess_count}"
    puts "Unmatched characters: #{@unmatched_chars}"
  end
  
  def play()
    until is_over == true
      guess_prompter
      if @p1word != @puzzle
        @is_over = false
        if (@total_guesses - @guess_count) > 0
          @is_over = false
        else (@total_guesses - @guess_count) == 0
          @is_over = true
          puts "Gameover! You're out of guesses."
        end
      else @p1word == @puzzle
        @is_over = true
        puts "You won! The puzzle is solved in #{@guess_count} guesses."
      end
    end
  end
  
end


puts "Welcome to the Guessing Game!"
puts "Rules: It's like Hangman or Wheel of Fortune, Player 1 enters a secret word & Player 2 guesses it by entering one character at a time."
puts "P1 enter puzzle word:"
p1word = gets.chomp.downcase
game = GuessingGame.new(p1word)
game.play