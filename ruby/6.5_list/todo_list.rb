# class TodoList
#   def initialize(list)
#     @list = list
#   end

#   def get_items
#     @list
#   end

#   def add_item(item)
#     @list << item
#     @list
#   end

#   def delete_item(item)
#     @list.delete(item)
#     @list
#   end

#   def get_item(i)
#     @list[i]
#   end
# end


class TodoList
  attr_reader :items

  def initialize(items = [])
    @items = items
  end

  def add_item(item)  
    @items << item
  end

  def delete_item(item)
    items.delete(item)
    items
  end

  def get_items(i)
      @items.at(i)
  end
end

items = ["do the dishes", "mow the lawn"]