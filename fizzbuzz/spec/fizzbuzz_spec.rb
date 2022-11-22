require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "Please input number" when given anything other than an integer' do
    expect(fizzbuzz("hello")).to eq 'Please input number'
  end 
  it 'returns "fizzbuzz" when passed a multiple of 5 and 3' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end
  it 'returns "fizz" when passed a multiple of 3' do
    expect(fizzbuzz(9)).to eq 'fizz'
  end
  it 'returns "buzz" when passed a multiple of 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end
  it 'returns the number when the number is not a multiple of 3 or 5' do
    expect(fizzbuzz(8)).to eq 8
  end
end