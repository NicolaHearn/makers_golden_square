class TodoList
  def initialize
    @list = []
  end

  def add(todo)
    @list << todo
  end

  def incomplete
    tasks_incomplete = []
    @list.each do |entry|
      if !entry.done? 
        tasks_incomplete << entry.task
      else
        next
      end
    end
    tasks_incomplete.join("/n")
  end

  def complete
    tasks_complete = []
    @list.each do |entry|
      if entry.done?
        tasks_complete << entry.task
      else
        next
      end
    end
    tasks_complete.join("/n")
  end

  def give_up!
    @list.each do |entry|
      entry.mark_done!
    end
    self.complete
  end
end