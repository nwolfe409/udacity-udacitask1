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
    
  def remove_item(num) #removes item from array based on the list number shown in print_list
    @items.delete_at(num-1)
  end
    
  def complete(num) #marks item as complete
    @items[num-1].complete_item
  end

  def print_list #prints the current contents of the todo list
    puts "*" * 25
    puts "#{title}"
    puts "*" * 25
    @items.each_with_index { |item, index| puts "#{index + 1} - #{item.description}  Completed: #{item.completed?} Due date: #{item.due_date}" }
  end 
  
  def print_incomplete # prints only the imcomplete items
    puts "*" * 25
    puts "#{title}"
    puts "*" * 25
    puts "Incomplete items"
    puts "*" * 25
    @items.each_with_index do |item, index|
      puts "#{index + 1} - #{item.description} Completed: #{item.completed?} Due date: #{item.due_date}" if item.completed_status == false 
    end
  end
  
  def completed? 
      @completed_status 
  end
  
  def remove_completed #removes the completed items from the list
    @items.each_with_index do |item, index|
      @items.delete_at(index) if item.completed_status == true
    end
  end

  def update_title(new_title) #updates the title of the list
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
  
  def completed? 
      @completed_status 
  end
  
  def complete_item
    @completed_status=true
  end
end