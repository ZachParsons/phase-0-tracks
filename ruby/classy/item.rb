# ITEM CLASS
# Attributes:
#   - name
#   - color
#   - price
# Methods:
#   - getters for color, price, name
#   - to_s override

class Item
  attr_reader :name, :color, :price

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  def to_s
    "A #{@color} #{@name} that cost #{@price} cents"
  end
end

# item = Item.new("cardboard box", "brown", 0)
# puts item

# item2 = Item.new("piano", "black", 10000)
# puts item2