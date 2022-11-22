def proper_sentence(text)
  punctuation = /([.?!])/
  caps = /([A-Z])/
  first_char = text[0]
  last_char = text[text.length-1]
  if text.scan(caps).size == 2 && text.split(" ").length == 2 && text[text.length-1].match(/[a-z]/)
    return true
  elsif 
    text.scan(caps).size == 2 && text.split(" ").length == 2 && !text[text.length-1].match(/[a-z]/)
    return false
  elsif
    first_char.match(caps) && last_char.match(punctuation)
    return true
  else
    false
  end
end
