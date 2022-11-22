require 'counter'
require 'string_builder'
require 'present.rb'

describe Counter do
  it "keeps track of count and adds number input by user to the count" do
    my_count = Counter.new
    my_count.add(3)
    result = my_count.report
    expect(result).to eq "Counted to 3 so far."
  end
end

describe StringBuilder do
  it "adds a new string to an existing string and can output the size and the string itself" do
    my_string = StringBuilder.new
    my_string.add("Energy")
    my_string.add(" Sucker")
    result = "#{my_string.output} is #{my_string.size} chars long."
  end
end


