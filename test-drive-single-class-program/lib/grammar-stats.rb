class GrammarStats
  def initialize
    @num_checks = 0
    @checks_passed = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    @num_checks += 1
    punctuation = /([.?!])/
    caps = /([A-Z])/
    first_char = text[0]
    last_char = text[text.length-1]
    if text.scan(caps).size == 2 && text.split(" ").length == 2 && text[text.length-1].match(/[a-z]/)
      @checks_passed += 1
      return true
    elsif 
      text.scan(caps).size == 2 && text.split(" ").length == 2 && !text[text.length-1].match(/[a-z]/)
      false
    elsif
      first_char.match(caps) && last_char.match(punctuation)
      @checks_passed += 1
      return true
    else
      false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return ((@checks_passed/@num_checks)*100).to_f.ceil
  end
end