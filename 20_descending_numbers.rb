# Background
# Using array and string methods
# Passing in one argument

## Specs

#Your task is to make a function that can take any 
#non-negative integer as a argument and return it 
#with its digits in descending order. 
#Essentially, rearrange the digits to create 
#the highest possible number.

#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221

def descending_order(n)
    indi = 0
    ascending_order = []
    num_array.each do |num|
        i += 1
        if  num_array.index[i] > num_array[i + 1] 
            ascending_order += num_array.shift 

        else num_array.index[i] < num_array[i + 1]
            puts ascending_order
            break
        end
    end
end

# Test your code here
descending_order(1)

# Add some interesting test cases that test edge cases