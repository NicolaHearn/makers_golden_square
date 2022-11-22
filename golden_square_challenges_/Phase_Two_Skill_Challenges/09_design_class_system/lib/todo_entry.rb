class Todo
  def initialize(desc,duedate)
    @desc = desc
    @duedate = duedate
    @complete = false
  end

  def date
    @duedate
  end

  def complete?
    @complete 
  end

  def mark_complete
    @complete = true
  end
end
