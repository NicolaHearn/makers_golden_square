


def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p "creates a cipher based on #{key.chars.uniq} + (#{('a'..'z').to_a} - #{key.chars}) to return #{cipher}"
    p "Next, it takes each character from the plaintext input (#{plaintext}), matches each character to a new character on the cipher"
    ciphertext_chars = plaintext.chars.map do |char|
        p "plaintext char '#{char}' becomes #{(65 + cipher.find_index(char)).chr}}"
       (65 + cipher.find_index(char)).chr
    end
    p "returns a new array of encoded letters"
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    p "to decode, the the method takes the encoded ciphertext ('EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL')"
    p "Next it creates a cipher based on the unique letters of the secret key plus the letters a-z with the unique letters of the secret key removed to give this array (#{key.chars.uniq + (('a'..'z').to_a - key.chars)})"
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)

    plaintext_chars = ciphertext.chars.map do |char|
      p "ciphertext character '#{char}' becomes 65 - #{char.ord} = #{cipher[65-char.ord]}}"
      cipher[char.ord - 65]
    end
    return plaintext_chars.join
  end
  
  # Intended output:
  #
  puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"