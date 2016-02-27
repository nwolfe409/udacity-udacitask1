require_relative 'todolist.rb'

# Creates a new todo list
my_list = TodoList.new("List of The Things to do")

# Add four new items
my_list.add_item "Bathe the cat", "2/26"
my_list.add_item "Walk the dog", "2/26"
my_list.add_item "Finish solving world peace", "3/26"
my_list.add_item "Go shopping", "2/27"

# Print the list
my_list.print_list

# Delete the first item
my_list.remove_item 1

# Print the list
my_list.print_list

# Delete the second item
my_list.remove_item 2

# Print the list
my_list.print_list

# Update the completion status of the first item to complete
my_list.complete(1)

# Print the list
my_list.print_list

# Update the title of the list
my_list.update_title "Stuff"

# Print the list
my_list.print_list

#print incomplete items only
my_list.print_incomplete

#remove completed items
my_list.remove_completed

#print the list 
my_list.print_list
