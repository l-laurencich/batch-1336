def encrypt(sentence)
  # define an array with the 26 letters of the alphabet (in capital letters)
  alphabet = ("A".."Z").to_a

  # split the sentence into each character
  chars = sentence.chars # == sentence.split('')
  # Itterate over the letters and check if the character is within the alphabet(A..Z)
  chars.map do |char|
    if alphabet.include?(char.upcase)
      # map the character to the 3rd left-shift of itsself
      new_index_of_char = alphabet.index(char) - 3
      alphabet[new_index_of_char]
    else 
      char
    end
    # join them together and return the string
  end.join('')

end