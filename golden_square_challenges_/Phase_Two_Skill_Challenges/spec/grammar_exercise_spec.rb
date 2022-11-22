require "grammar_exercise"

RSpec.describe "grammar_checker method" do
  context "it takes a string hello world" do
    it "returns false" do
      result = grammar_checker("hello world")
      expect(result).to eq false
    end
  end

  context "it takes a string Hello world." do
    it "returns true" do
      result = grammar_checker("Hello world.") do
        expect(result).to eq true
      end
    end
  end

  context "it takes a string Hello world!" do
    it "returns true" do
      result = grammar_checker("Hello world!") do
        expect(result).to eq true
      end
    end
  end

  context "it takes a string Hello world-" do
    it "returns false" do
      result = grammar_checker("Hello world-") do
        expect(result).to eq false
      end
    end
  end

  context "it takes an empty string" do
    it "returns false" do
      expect { grammar_checker("") }.to raise_error "not a string"
    end
  end
end
