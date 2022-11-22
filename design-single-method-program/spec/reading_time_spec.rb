require 'reading_time'

describe "calculate_reading_time" do
  context "given empty string" do
    it "returns a time of 0" do
      expect(calculate_reading_time("")).to eq 0
    end
  end
  context "given a word" do
    it "returns a time of 1" do
      expect(calculate_reading_time("word")).to eq 1
    end
  end
  context "given 200 words" do
    it "returns a time of 1" do
      expect(calculate_reading_time("word " * 200)).to eq 1
    end
  end
end
