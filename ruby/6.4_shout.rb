# #module declaration

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end

# end

# # driver code
# p Shout.yell_angrily("Ho, ho, ho! Haaaappy holidays!")
# p Shout.yelling_happily("Ho, ho, ho! Haaaappy holidays!")


# mixin version of the Shout module
module Shout

  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yelling_happily(words)
    p words + "!!!" + " :D"
  end

end

class Auctioneer
  include Shout
end

class Trader
  include Shout
end

auctioneer = Auctioneer.new
trader = Trader.new

auctioneer.yell_angrily("You've got three choices")
auctioneer.yelling_happily("Full Jam Sam")
trader.yell_angrily("Buying 100 AGE @ 50")
trader.yelling_happily("Selling 100 AGE @ 52")