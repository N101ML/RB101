def ascii_value(string)
  new_array = []

  string.chars.each do |char|
    new_array << char.ord
  end

  new_array.sum
end

# Solution below comes from assignment:
# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

p  ascii_value('Four score') == 984
p  ascii_value('Launch School') == 1251
p  ascii_value('a') == 97
p  ascii_value('') == 0

# Input: a string
# Output: an integer with ASCII string value summed

# Requirements: 
# - Return an integer that is the value of each individual element in the inputted string, coverted to ASCII and then summed.

# Rules:
# - We can assume input will be a string. Can use String#ord

# Mental Model:
# - Find the value of each character's ASCII value from the inputted string and sum those totals

# Examples/Test Cases:

# ````
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
# ````

# Data Structure: 
# - Store character ASCII values in array

# Algorithm:
# - Convert the string into an array
# - Create `new_arr` for storing ASCII values once coverted
# - Iterate through every object in the array
#   - Covert each object into it's ASCII value
#   - Store that value into `new_arr`
# - Sum totals from `new_arr`
