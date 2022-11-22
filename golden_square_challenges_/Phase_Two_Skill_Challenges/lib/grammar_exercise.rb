def grammar_checker(string)
  fail "not a string" if string.empty?
  if string.chars[-1] == [".", "!", "?"] && string.chars[0] == string.chars.upcase
    return true
  else
    false
  end
end
