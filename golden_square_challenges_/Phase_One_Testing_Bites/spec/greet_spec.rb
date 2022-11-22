require "greet"

RSpec.describe "greet method" do
  it "greets a given user" do
    result = greet("Aimee")
    expect(result).to eq "Hello, Aimee!"
  end
end
