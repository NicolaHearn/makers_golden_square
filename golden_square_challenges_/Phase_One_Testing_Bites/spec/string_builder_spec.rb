require "string_builder"

RSpec.describe StringBuilder do
  context "initially" do
    it "initially returns an empty string" do
      string_builder = StringBuilder.new
      expect(string_builder.output).to eq ""
    end

    it "initially returns a size of 0" do
      string_builder = StringBuilder.new
      expect(string_builder.size).to eq 0
    end
  end

  context "given many additions of a string" do
    it "outputs that string" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      string_builder.add("how")
      string_builder.add("are")
      string_builder.add("you")
      expect(string_builder.output).to eq "hellohowareyou"
    end

    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      expect(string_builder.size).to eq 5
    end
    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      string_builder.add("how")
      string_builder.add("are")
      string_builder.add("you")
      expect(string_builder.size).to eq 14
    end
  end
end
