require "report_length"
RSpec.describe "report length method" do
  it "returns 0 if given an empty string" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end
  it "returns 5 if given a 5 character string" do
    result = report_length("Aimee")
    expect(result).to eq "This string was 5 characters long."
  end
  it "returns 11 when given a 10 character string including white space" do
    result = report_length("Hello World")
    expect(result).to eq "This string was 11 characters long."
  end
end
