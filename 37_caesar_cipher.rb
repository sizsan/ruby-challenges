# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
# 
# If the shift pushes beyond the end of the alphabet, start back at 'A'
# Example: 
# c = CaesarCipher.new(1)
# c.encode('ZOO') # returns 'APP'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

# .rotate used to csawp the letters around 

class CaesarCipher
  def initialize(shift)
    @alphabet = ("A".."Z").to_a
    @shift = shift
  end

  def encode(string)
    result = []
    string.upppercase.chars.each do |char|
     index = @alphabet.index(char)
     result << @alphabet.rotate(@shift)[index]      
    end
    return result.join
  end
  
  def decode(string)
    result = []
    string.uppercase.chars.each do |char|
      index = @alphabet.index(char)
      result << @alphabet.rotate(-@shift)[index]
    end
    return result.join
  end
end

# c = CaesarCipher.new(5)
# puts c.encode("WAFFLES")
# puts c.decode("BFKKQJX")

