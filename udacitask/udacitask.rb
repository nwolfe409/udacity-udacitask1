require_relative 'todolist.rb'

# Creates a new todo list
my_list = TodoList.new("List of The Things to do")

# Add four new items
my_list.add_item "Bathe the cat"
my_list.add_item "Walk the dog"
my_list.add_item "Finish solving world peace"
my_list.add_item "Go shopping"

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