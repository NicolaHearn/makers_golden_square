require 'count-words'

describe 'count-words' do
  context "given an empty string" do
    it "returns an empty string message" do
      result = count_words("")
      expect(result).to eq "The string is empty"
    end
  end
  context "given a string" do
    it "returns the " do
      result = count_words("Maybe someday I can")
      expect(result).to eq 4
    end 
  end
end