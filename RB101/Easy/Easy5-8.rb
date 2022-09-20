require 'pry'

NUMBERS_TO_WORDS = %w(zero one two three four five six seven 
                  eight nine ten eleven twelve thirteen fourteen 
                  fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(range)
#   new_hsh = {}
#   range_arr = []

#   range.each do |num|
#     new_hsh[num] = NUMBERS_TO_WORDS[num]
#   end

#   range_arr = new_hsh.sort_by { |key, value| value}

#   range_arr.map! do |arr|
#     arr.delete(arr[0])
#   end

#   range_arr
# end

# Solution below is from the assignment:

def alphabetic_number_sort(range)
  range.sort { |num1, num2| NUMBERS_TO_WORDS[num1] <=> NUMBERS_TO_WORDS[num2]}
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# ### Input: 
# - An array of numbers between a range of 0 and 19

# ### Output: 
# - An array of numbers

# ### Requirements/Rules: 
# - Integers inputted from array will range between 0 and 19
# - Sort is based on Engliosh words for each number

# ### Model:
# - Given an array we will arrange the numbers based on their english language equivalent and ordered alphabetically

# ### Examples / Test Cases: 
# ````
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
# ````
# ### Data Structure
# - Store values in a hash

# ### Algorithm
# - Initialize `new_hsh`
# - Iterate through `range`
#   - Place the first instance of `range` into the hash with a value of the constant at the same index
# - Place `new_hsh` values into `range_arr`
# - Sort `range_arr` alphabetically
