require 'grammar-stats'

describe GrammarStats do
  it "constructs" do
    my_gs = GrammarStats.new
    expect(my_gs.is_a?(GrammarStats)).to eq true
  end
  context "given a string beginning with a capital letter and ending with a sentence-ending punctuation mark" do
    it "returns true" do
      my_gs = GrammarStats.new
      expect(my_gs.check("I am a sentence.")).to eq true
    end
  end
  context "given a string that doesn't begin with a capital letter and endi with a sentence-ending punctuation mark" do
    it "returns false" do
      my_gs = GrammarStats.new
      expect(my_gs.check("i am a sentence.")).to eq false
    end
  end
  it "returns the number of checks that have passed as a integer representing a percentage" do
    my_gs = GrammarStats.new
    my_gs.check("I am a sentence.")
    my_gs.check("i am a sentence")
    expect(my_gs.percentage_good).to eq 50
  end
end