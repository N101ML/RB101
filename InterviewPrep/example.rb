=begin
# input: arr of integers
# output: integer
# rules:
  # find the index where the sum to the left is the same as the sum to the right
  # if none exists, return -1
# examples:
  #
# data structure:
  # array / loop
# algorithm:
  # loop
    # ls is equal to 0 with length of length
    # rs is equal to 0 + 1 to length of last element (-1)
=end

require 'pry'

def find_even_index(arr)
  length = 0
  loop do
    left_side = arr[0, length]
    right_side = arr[(length + 1)..-1]
    return length if left_side.sum == right_side.sum
    length += 1
    break if length >= arr.size
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
