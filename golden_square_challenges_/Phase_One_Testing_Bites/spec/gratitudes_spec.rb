require "gratitudes"

RSpec.describe Gratitudes do
  context "initially" do
    it "initally returns an empty list of gratitudes" do
      gratitudes = Gratitudes.new
      expect(gratitudes.format).to eq "Be grateful for: "
    end

    it "returns a list of one gratitude" do
      gratitudes = Gratitudes.new
      gratitudes.add("my health")
      expect(gratitudes.format).to eq "Be grateful for: my health"
    end
  end

  context "given many additions" do
    it "returns a list of multiple gratitudes" do
      gratitudes = Gratitudes.new
      gratitudes.add("my health")
      gratitudes.add("my family")
      gratitudes.add("my dog")
      expect(gratitudes.format).to eq "Be grateful for: my health, my family, my dog"
    end
  end
end
