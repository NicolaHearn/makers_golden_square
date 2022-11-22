require 'todo'

describe 'todo' do
  context "Given an empty string" do
    it "fails and notifies the user with error message" do
      expect { todo("") }.to raise_error "No text entered"
    end
  end
  context "Given and input that isn't a string" do
    it "fails and notifies the user with error message" do
      expect { todo(4) }.to raise_error "Input is not a string"
    end
  end
  context "Given a string that contains #TODO" do
    it "returns true" do
      expect(todo("A string with #TODO")).to eq true
    end
  end
  context "Given a string that does not contain #TODO" do
    it "returns false" do
      expect(todo("A string without todo")).to eq false
    end
  end
end