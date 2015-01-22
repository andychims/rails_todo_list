class TodosList
  attr_accessor :todos
  
  def initialize(todos)
    @todos = todos
  end
  
  def list_all_todos
    @todos.each do |todo|
      puts todo.content
    end
  end
  
  def list_complete_todos
    puts "i finished:"
    @todos.each do |todo|
      if todo.complete == true
        puts todo.content
      end
    end
  end
  
  def list_incomplete_todos
    puts "i still need to:"
    @todos.each do |todo|
      if todo.complete == false
        puts todo.content
      end
    end
  end
  
  def high_priority_todos
    puts "high priority todos:"
    @todos.each do |todo|
      if todo.priority == :high
        if todo.complete == true
          status = "complete"
        else
          status = "incomplete"
        end
        puts "#{todo.content} - #{status}"
      end
    end
  end

  def low_priority_todos
    puts "low priority todos:"
    @todos.each do |i|
      if i.priority == :low
        if i.complete == true
          status = "complete"
        else
          status = "incomplete"
        end
        puts "#{i.content} - #{status}"
      end
    end
  end


end