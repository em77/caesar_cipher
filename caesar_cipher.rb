def caesar_cipher(string, shift_factor)
  alphabet = ("a".."z").to_a
  ciphered_alphabet = alphabet.dup
  new_string = ""
  while shift_factor > 0
    ciphered_alphabet << ciphered_alphabet.shift
    shift_factor -= 1
  end
  split_string = string.split("")
  split_string.each do |letter|
    alpha_index = alphabet.index(letter.downcase)
    if alpha_index.nil?
      new_string << letter
    else
      if letter == letter.downcase
        new_string << ciphered_alphabet[alpha_index]
      else
        new_string << ciphered_alphabet[alpha_index].capitalize
      end
    end
  end
  new_string
end

string = "What a string!"
print "Plaintext: " + string
puts "\nCiphertext: " + caesar_cipher(string, 5)