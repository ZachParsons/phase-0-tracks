# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative '6.6_game_frogs'

describe GuessingGame do
  let(:game) { GuessingGame.new("secret") }

  it "" do

    expect(game.guess_prompter("aa")).to eq puts "P2 Enter only one character at a time."
  end

  it "" do

    expect(game.guess_counter()).to eq 
  end

  it "" do

    expect(game.match_checker()).to eq
  end

  it "" do

    expect(game.puzzle_updater()).to eq
  end

  it "" do

    expect(game.per_turn_feedback()).to eq
  end

  it "" do

    expect(game.play()).to eq
  end

end