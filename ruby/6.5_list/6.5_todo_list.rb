class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
    @list
  end

  def delete_item(item)
    @list.delete(item)
    @list
  end

  def get_item(i)
    @list[i]
  end
end