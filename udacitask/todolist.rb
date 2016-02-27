# todolist.rb

class TodoList
  attr_reader :title, :items

  def initialize(list_title) # Initialize todo list with a title and no items
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end
     
  def add_item(new_item, due_date)    # Creates a new Item and adds it to the array of Items
    item = Item.new(new_item, due_date)
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
      puts "#{index + 1} - #{item.description}  Completed: #{item.completed_status} Due date: #{item.due_date}"
    end
  end 
  
    def print_incomplete
    @items.each_with_index do |item, index|
      if item.completed_status == false 
          puts "#{index + 1} - #{item.description}  Completed: #{item.completed_status}"
    end
      end
  end
  
  def remove_completed
    @items.each_with_index do |item, index|
      puts "iteration #{index}"
      if item.completed_status == true 
        @items.delete_at(index)
      end
    end
  end
      
  
  def update_title(new_title)
    @title = new_title
  end
     
end

class Item
  attr_reader :description, :completed_status, :due_date
  def initialize(item_description, due_date)  # Initialize item with a description and marked as not complete
    @description = item_description
    @completed_status = false
    @due_date = due_date
  end
     
  def complete_item
    @completed_status=true
  end
end