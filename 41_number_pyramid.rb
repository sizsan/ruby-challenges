# Number pyramid
# Number pyramid is a recursive structure where each next row is constructed by adding adjacent values of the current row. For example:

# Row 1     [1     2     3     4]
# Row 2        [3     5     7]
# Row 3           [8    12]
# Row 4             [20]
# Task
# Given the first row of the number pyramid, find the value stored in its last row.

# Examples
# reduce_pyramid([1])        ==  1
# reduce_pyramid([3, 5])     ==  8
# reduce_pyramid([3, 9, 4])  ==  25

def reduce_pyramid(pyramid)
  row2 = []
  until pyramid.length == 1 do
    i = 0
    row2 << pyramid[i] + pyramid[i+1]
    # use a second itteration
  end
  pyramid = row2
  puts row2
end

reduce_pyramid([3, 9, 4])