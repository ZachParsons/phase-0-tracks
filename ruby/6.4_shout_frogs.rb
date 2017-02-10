# 6.4 Modules

# Release 1: Write a Simple Module
# # module declaration

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end

# end


# # driver code
# p Shout.yell_angrily("Hello World")
# p Shout.yelling_happily("Hello World")


# Release 3: Convert a Standalone Module to a Mixin
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

# driver code for mixin module 
auctioneer1 = Auctioneer.new
trader1 = Trader.new

auctioneer1.yell_angrily("You've got three choices")
auctioneer1.yelling_happily("Full Jam Sam")
trader1.yell_angrily("Buying 100 AGE @ 50")
trader1.yelling_happily("Selling 100 AGE @ 52")