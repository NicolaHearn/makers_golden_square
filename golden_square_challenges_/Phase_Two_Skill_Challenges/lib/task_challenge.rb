def task_checker(string)
  if string.include?("#TODO.")
    return true
  else
    return false
  end
end