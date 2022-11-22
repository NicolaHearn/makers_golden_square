class GrammarStats
  def initialize
    @passing_tests = 0
    @total_number = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "Please give a sentence." if text.empty?
    if text[0] == text[0].upcase && [".", "!", "?"].include?(text[-1])
      # p @passing_tests
      @passing_tests += 1
      # p @passing_tests
      @total_number += 1
      return true
    else
      @total_number += 1
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    (@passing_tests.to_f / @total_number.to_f) * 100
  end
end
