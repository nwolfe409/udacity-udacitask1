# todolist.rb

class TodoList
  attr_reader :title, :items

  def initialize(list_title) # Initialize todo list with a title and no items
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end
     
  def add_item(new_item)    # Creates a new Item and adds it to the array of Items
    item = Item.new(new_item)
    @items.push(item)
  end
    
  def remove_item(num)
    @items.delete_at(num-1)
  end
    
  def complete(num)
    @items[num-1].complete_item
  end
  
  def print_list
    puts "*" * 25
    puts "#{title}"
    puts "*" * 25
    @items.each_with_index do |item, index|
      puts "#{index + 1} - #{item.description}  Completed: #{item.completed_status}"
    end
  end 
  
  def update_title(new_title)
    @title = new_title
  end
     
end

class Item
  attr_reader :description, :completed_status
  def initialize(item_description)  # Initialize item with a description and marked as not complete
    @description = item_description
    @completed_status = false
  end
     
  def complete_item
    @completed_status=true
  end
end