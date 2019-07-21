# Valid parentheses

# Write a method that returns true if the argument string contains valid parentheses
# Examples that evaluate to true: 
# valid_parentheses?("()") => true
# valid_parentheses?("abc") => true
# valid_parentheses?("(a(bc))") => true
#
# Examples that evaluate to false:
# valid_parentheses?("(") => false
# valid_parentheses?("abc)") => false
# valid_parentheses?("(a(bc)") => false

def valid_parentheses?(string)
    count = 0
    string.chars.each do |char|
        if char == "("
            count += 1
        elsif char == ")"
            count -= 1
        end
       return false if count < 0
    end
  return count == 0  
end

# puts valid_parentheses?("()")
# puts valid_parentheses?("(a(bc)")