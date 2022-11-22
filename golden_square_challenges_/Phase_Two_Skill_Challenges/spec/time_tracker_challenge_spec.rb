require 'time_tracker_challenge'

RSpec.describe "time_tracker_challenge method" do
  context "given an empty string" do
    it "returns 0" do
      result = time_tracker_challenge("")
      expect(result).to eq 0
    end
  end
  context "given a string of 5 words" do
    it "returns 1" do
      result = time_tracker_challenge("Hello " * 5)
      expect(result).to eq 1
    end
  end
  context "given a string of 200 words" do
    it "returns 1" do
      result = time_tracker_challenge("Hello " * 200)
      expect(result).to eq 1
    end
  end
  context "given a string of white space" do
    it "returns 0" do
      result = time_tracker_challenge("             ")
      expect(result).to eq 0
    end
  end
  context "given a string of 10000 words" do
    it "returns 50" do
      result = time_tracker_challenge("Hello " * 10000)
      expect(result).to eq 50
    end
  end
end
