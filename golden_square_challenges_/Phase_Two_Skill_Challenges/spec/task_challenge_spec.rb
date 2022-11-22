require "task_challenge"

RSpec.describe "task_checker method" do
  context "given a string that contains #TODO." do
    it "returns true" do
      result = task_checker("#TODO.")
      expect(result).to eq true
    end
  end

  context "given a string that does not contain #TODO." do
    it "returns false" do
      result = task_checker("wash the car")
      expect(result).to eq false
    end
  end

  context "given an empty string" do
    it "returns false" do
      result = task_checker("")
      expect(result).to eq false
    end
  end

  context "given a string of white space" do
    it "returns false" do
      result = task_checker("        ")
      expect(result).to eq false
    end
  end

  context "given a string that contains #todo. but in lowercase" do
    it "returns false" do
      result = task_checker("#todo.")
      expect(result).to eq false
    end
  end
end
