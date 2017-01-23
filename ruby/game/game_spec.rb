require_relative 'game'

describe Game do
  let(:game) { Game.new }

  it "inserts p2char in blanked p1word, counts guesses, adds chars" do
    expect(Game.match_char("banana", "a")).to eq ("_a_a_a", 1, ["a"])
  end

  it "prints 'you won' or 'gameover'" do
    expect(Game.endgame("banana", 9)).to eq "You won! You solved the puzzle, & get to start the next round."
  end
end