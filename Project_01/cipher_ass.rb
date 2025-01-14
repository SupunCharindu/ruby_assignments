=begin
Implement a Caesar cipher that takes in a string and the shift factor and then outputs
the modified string using a right shift.
=end

def cipher(string,shift)
  modified_str = '' #empty string for letter push the values and put out put

  string.each_char do |char|
    ascii = char.ord #make string to ord value(ASCII)

    if(ascii.between?(65,90) || ascii.between?(97,122))
      new_ascii = ascii + shift

      if (new_ascii > 90 && ascii.between?(65,90) || new_ascii > 122 && ascii.between?(97,122))
        new_ascii -=26
      end

      cipher_char = new_ascii.chr
      modified_str << cipher_char
    else
      modified_str << char #characters that not a letters
    end
  end
  puts modified_str
end

cipher("What a string!",5)