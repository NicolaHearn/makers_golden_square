def count_words(text)
  if text == ""
    return "The string is empty"
  else
    return text.split(" ").count
  end
end