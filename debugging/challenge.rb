def get_most_common_letter(text)
  counter = Hash.new(0)
  p "creates a new hash called 'counter' #{counter}"
  p "for each character in the text it creates a key in the hash with  a value of 1. Then adds 1 to that key whenever the key appears as a character."
  text.chars.each do |char|
    next if char == " " || char == "," || char == "!"
    counter[char] += 1
  end
  p "to return #{counter}"
  p "Then it sorts the hash in descending order #{(counter.to_a.sort_by { |k, v| v }.reverse)} and returns the first value in the hash"
counter.to_a.sort_by { |k, v| v }.reverse[0][0]
end

# Intended output:
# 
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"