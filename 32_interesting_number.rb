# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
    numbers = number.digits.reverse
    puts false if numbers.length < 3 
    i = 0
# Descending
if numbers[0] > numbers[1]
    numbers.each - 1 do |num|
    numbers[i] == numbers[i+1] - 1 ? i+1 : false
        end    
        puts true
# Ascending 
elsif numbers[0] < numbers[1]
    numbers.each do |num|
    numbers[i] == numbers[i+1] + 1 ? i+1 : false
        end
        puts true 
else 
    puts false
end
end

