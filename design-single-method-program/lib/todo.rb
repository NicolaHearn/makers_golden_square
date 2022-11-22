def todo(text)
  if !text.is_a? String
    fail "Input is not a string"
  elsif text.empty?
    fail "No text entered"
  elsif text.include?("#TODO")
    true
  else
    false
  end
end
