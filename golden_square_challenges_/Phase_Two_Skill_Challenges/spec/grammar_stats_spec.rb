require "grammar_stats"

RSpec.describe GrammarStats do
  it "returns true" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello.")).to eq true
  end

  it "returns false" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello.")).to eq false
  end

  it "returns false" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello")).to eq false
  end

  it "returns false" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello")).to eq false
  end

  it "fails" do
    grammar_stats = GrammarStats.new
    expect { grammar_stats.check("") }.to raise_error "Please give a sentence."
  end

  describe "#percentage_good" do
    it "returns the percentage of passing texts" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello.")
      grammar_stats.check("Hello, world.")
      grammar_stats.check("hello.")
      grammar_stats.check("Hello")
      expect(grammar_stats.percentage_good).to eq 50
    end

    it "returns the 0 percent when there are zero passing texts" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("hello.")
      grammar_stats.check("hello, world.")
      grammar_stats.check("hello.")
      grammar_stats.check("Hello")
      expect(grammar_stats.percentage_good).to eq 0
    end
  end
end
