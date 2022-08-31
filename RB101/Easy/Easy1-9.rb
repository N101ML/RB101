## My solution is below:

# def sum(int)
#   int.digits.sum
# end

## Answer below comes from exercise:

# def sum(int)
#   sum = 0

#   str_digits = int.to_s.chars

#   str_digits.each do |string_char|
#     sum += string_char.to_i
#   end

#   sum
# end

## Another solution from the exercise:

def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# ## Problem
# - Input: a single argument
#   - Positive Integer
# - Output: a single integer
#   - Sum of integers from input

# ## Examples / Test Cases

# sum(23) == 5
# sum(496) == 19
# sum(123_456_789) == 45

# ## Data Structures

# - An array to store individual components of the integer given

# ## Algorithm

# - Initialize empty array
# - Take individual integers from input and place in array 
# - Sum total of integers
#   - Convert sum total from the array to int
# - Return summed integer
