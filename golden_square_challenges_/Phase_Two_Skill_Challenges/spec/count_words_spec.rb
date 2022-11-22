require "count_words"
RSpec.describe "count_words method" do
  context "given string of no words" do
    it "returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end

  context "given string of seven words" do
    it "counts number of words" do
      result = count_words("red fox jumped over the lazy dog")
      expect(result).to eq 7
    end
  end

  context "given a string with words and spaces" do
    it "counts the number of words" do
      result = count_words("yellow blue     green")
      expect(result).to eq 3
    end
  end
end

# A method called count_words that takes a string
# and returns the number of words in that string
