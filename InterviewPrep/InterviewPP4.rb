=begin
# input: an array of integers
# output: an array of 2 numbers
# rules:
  # return an array of 2 numbers that are closest together in value
  # integers in input array are all > 0
# examples:
  # p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
    p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
    p closest_numbers([12, 7, 17]) == [12, 7]
# data structure:
  # array
# algorithm:
  # initalize a closest_range variable and set it to 100
  # initialize a results_array
  # iterate through the input array
    # nest an iteration to compare the values to each other
      # subtract first element from each instance of the array (use absolute value to account for negative?)
      # if the result of that subtraction is < 100
        # place the current elements you are comparing into results_array
      # if not, continue iteration
  # return results array
=end

require 'pry'

def closest_numbers(array)
  results_array = []
  closest_range = 100

  array.each do |first_number|
    array.each do |second_number|
      if first_number != second_number
        check_number = first_number - second_number
        if check_number.abs < closest_range
          closest_range = check_number.abs
          results_array = first_number, second_number
        end
      end
    end
  end

  results_array
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
