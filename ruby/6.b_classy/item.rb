# ITEM CLASS
# Attributes:
#   - name
#   - color
#   - price
# Methods:
#   - getters for color, price, name
#   - to_s override

class Item
# using attr_* methods for getting/setting a class instance's state
#  outside the scope of its class declaration 
  attr_reader :name, :color, :price

# initialization method sets object's state at time of creation
# each instance's attribute state can be passed as argument values
  def initialize(name, color, price)
# attributes: instance variables = local variables
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