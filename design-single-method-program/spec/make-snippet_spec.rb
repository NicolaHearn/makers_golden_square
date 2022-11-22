require 'make-snippet'

describe 'make-snippet' do
  context "given a string of more than 5 words" do
    it "returns the first five words with '...' at the end" do
      result = make_snippet("I am no longer willing to do that")
      expect(result).to eq "I am no longer willing..."
    end
  end
  context "given a string of 5 words" do
    it "returns the unchanged text input" do
      result = make_snippet("I am fine")
      expect(result).to eq "I am fine"
    end
  end
end

