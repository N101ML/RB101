=begin
# input: an array of integers
# output: an array of integers (representing how many unique numbers are smaller)
# rules:
  # if a given number occurs multiple times in input array, it should only be counted once
  # 
# examples:
  p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
  p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
  p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
  p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
  p smaller_numbers_than_current([1]) == [0]
# data structure:
  # array
# algorithm:
  # initialize result array
  # iterate through input array with index (upto?)
    # use index to call new method that checks for number of lower than values
  # new method
    # input is the index we are checking
    # initialize a count
    # iterate through input string of only unique values
      # if it equals the current indexed value, skip
      # if it's lower, add to the count
    # return the count
  # return the result array
=end

def smaller_numbers_than_current(input_array)
  result_array = []

  0.upto(input_array.size - 1) do |index|
    result_array << find_lowest(input_array[index], input_array)
  end

  result_array
end

def find_lowest(index, input_array)
  count = 0
  input_array.uniq.each do |num|
    count += 1 if index > num && index != num
  end
  count
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
