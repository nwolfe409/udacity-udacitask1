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
     
     
end

class Item
  attr_reader :description, :completed_status
  def initialize(item_description)  # Initialize item with a description and marked as not complete
        @description = item_description
        @completed_status = false
     end 
end