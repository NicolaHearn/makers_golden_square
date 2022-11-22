require 'improve-grammar'

describe "improve_grammar" do
  context "when given a sentence beginning with a capital letter and ending with a full stop, question mark or exclamation mark" do
    it "returns true" do
      good_grammar_fs = proper_sentence("I am a sentence.")
      good_grammar_qm = proper_sentence("I am a sentence?")
      good_grammar_em = proper_sentence("I am a sentence!")
      expect(good_grammar_fs).to eq true
      expect(good_grammar_qm).to eq true
      expect(good_grammar_em).to eq true
    end
  end
  context "when given a name i.e. two words beginning with a capital letter" do
    it "returns true" do
      good_grammar_name = proper_sentence("Nicola Hearn")
      good_grammar_name1 = proper_sentence("Nicola HearN")
      good_grammar_name2 = proper_sentence("Nicola Hearn.")
      expect(good_grammar_name).to eq true
      expect(good_grammar_name1).to eq false
      expect(good_grammar_name2).to eq false
    end
  end
  context "when given a single word with or without the first letter capitalised" do
    it "returns false" do
      good_grammar_single = proper_sentence("sentence")
      good_grammar_single1 = proper_sentence("Sentence")
      expect(good_grammar_single).to eq false
      expect(good_grammar_single1).to eq false
    end  
  end
  context "when given a number as a string" do
    it "returns false" do
      good_grammar = proper_sentence("123 123")
      expect(good_grammar).to eq false
    end
  end
  context "when sentence does not begin with a capital letter and end with a punctuation mark" do
    it "returns false" do
      good_grammar_1 = proper_sentence("I am a sentence")
      good_grammar_2 = proper_sentence("i am a sentence.")
      good_grammar_3 = proper_sentence("i am a sentence")
      expect(good_grammar_1).to eq false
      expect(good_grammar_2).to eq false
      expect(good_grammar_3).to eq false
    end
  end
end