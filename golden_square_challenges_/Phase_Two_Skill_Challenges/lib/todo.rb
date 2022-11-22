class TodoList
  def initialize
    @todo_list = []
  end

  def add(task)
    fail "Invalid task" if task.empty?
    @todo_list << task
    # task is a string
    # adds task to todo list
    # No return value
  end

  def view
    return @todo_list
  end

  def complete(task)
    fail "Task not on list" unless @todo_list.include?(task)
    @todo_list.delete(task)
  end
end
