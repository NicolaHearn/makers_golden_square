require "password_checker"

RSpec.describe PasswordChecker do
  it "returns true if password length is eight or more characters" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("cucumber")).to eq true
  end
  it "returns error when password is less than eight characters" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("hey") }.to raise_error "Invalid password, must be 8+ characters."
  end
  it "returns error when password is 0 characters" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end
end

# if password length is eight or more characters it passes
# otherwise if password is 0 or less than 8 characters it raises error
