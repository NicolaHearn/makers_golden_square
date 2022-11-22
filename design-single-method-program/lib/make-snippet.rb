def make_snippet(text)
  words = text.split(" ")
  if words.length > 5
    return "#{words[0, 5].join(" ")}..."
  else 
    return text
  end
end
