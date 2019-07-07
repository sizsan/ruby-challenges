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
    op = 0
    cl = 0 
    string.chars.each do |char|
        if char == "("
            op += 1
        elsif char == ")"
            cl += 1
        else 
        end
    end
  puts op == cl ? 'true' : 'false' 
end

puts valid_parentheses?("()")
puts valid_parentheses?("(a(bc)")