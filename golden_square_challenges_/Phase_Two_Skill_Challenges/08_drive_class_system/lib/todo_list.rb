# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    #returns all non-done todos
    @todo_list.filter { |todo| !todo.done? }
  end

  def complete
    # Returns all complete todos
    return @todo_list.filter { |todo| todo.done? }
  end

  def give_up!
    # Marks all todos as complete
    @todo_list.each { |todo| todo.mark_done! }
  end
end
