
def fizzbuzz (number)
  if !number.is_a? Integer
    "Please input number"
  elsif number % 3 == 0 && number % 5 == 0
        "fizzbuzz"
  elsif number % 3 == 0
        "fizz"
  elsif number % 5 ==0
        "buzz"
  else 
    number 
  end 
end