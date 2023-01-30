=begin
# input: an array and an integer
# output: an array
# rules:
  # sum 2 different integers and when their sum equals 10, return those integers as an array
  # if there are more than 1 pair, return the one with the second element has the smallest index
# examples:
  # sum_pairs([11, 3, 7, 5], 10) == [3, 7]
    sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
# data structure:
  # array
# algorithm:
  # iterate through array using index 0 as an anchor
    # iterate through array nested
      # check if sum of the nested array == sum, and if so return that array
=end

require 'pry'

def sum_pairs(array, sum)
  new_array = []
  lowest_index = array.size

  (0...array.size).each do |first_num|
    (first_num...array.size).each_with_index do |second_num, idx|
      next if first_num == second_num

      check = [array[first_num], array[second_num]]

      if check.sum == sum && idx < lowest_index
        new_array = check
        lowest_index = idx
      end
    end
  end
  return nil if new_array.empty?
  new_array

end

p  sum_pairs([11, 3, 7, 5], 10) == [3, 7]
p  sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
p sum_pairs([0, 0, -2, 3], 2) == nil
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
p sum_pairs([5, 9, 13, -3], 10) == [13, -3]
