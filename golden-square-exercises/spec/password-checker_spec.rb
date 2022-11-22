require 'password-checker'

describe PasswordChecker do
  it "fails if password is shorter than 8 characters long" do
    my_check = PasswordChecker.new
    my_check.check("pickle")
    expect { my_check.check("pickle") }.to raise_error "Invalid password, must be 8+ characters."
  end
  it "returns true is the password is 8 characters or longer" do
    my_check = PasswordChecker.new
    expect(my_check.check("pineapple")).to eq true
  end
end