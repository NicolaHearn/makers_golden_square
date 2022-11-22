class Todo
  def initialize(task)
    @task = task
    @done = false
  end

  def task
    @task
  end

  def mark_done!
    if !@done
      @done = true
    end
  end

  def done?
    if @done
      true
    else
      false
    end
  end
end
