class MyPlanner
  def initialize
    @list_of_todos = []
  end

  def add_todos(todo)
    @list_of_todos << todo
  end

  def incompleted_todo
  incompleted = []
    @list_of_todos.each {|todo| if !todo.complete? then incompleted << todo end }
    return incompleted
  end

  def completed_todo
    completed = []
    @list_of_todos.each {|todo| if todo.complete? then completed << todo end}
    completed
  end
end 

