require './todo'
require './todos_list'

todo1 = Todo.new("updated yall!", false, :high)
todo2 = Todo.new("Read 'Hitchhiker's Guide to the Galaxy'", false, :high)
todo3 = Todo.new("something number 3", true)
todos = [todo1, todo2, todo3]


todo_list = TodosList.new(todos)
todo_list.list_complete_todos
puts "\n"
todo_list.list_incomplete_todos
puts "\n"
todo_list.high_priority_todos
todo_list.low_priority_todos