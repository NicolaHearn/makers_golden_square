require 'gratitudes'

describe Gratitudes do
  it "keeps a list of gratitudes, adds user gratitude to the list and output the result" do
    my_gratitudes = Gratitudes.new
    my_gratitudes.add("Kay's videos!")
    result = my_gratitudes.format
    expect(result).to eq "Be grateful for: Kay's videos!"
  end
end