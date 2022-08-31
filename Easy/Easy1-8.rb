##### Original solution I came up with below:

# def average(array)
#   sum = 0
#   average = 0

#   array.each do |number|
#     sum += number
#   end

#   average = sum / array.length

# end


####### Solution from exercise below:

# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end

# Further Exploration: Looked at submitted solutions and kind of merged some ideas together

def average (numbers)
  (numbers.inject(:+) / numbers.count.to_f).round(2)
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52]) 


# ## Problem
# - Input: a single array of integers
#   - Input array will never be empty
#   - Integers will always be positive
# - Output: A single integer
#   - The result of averaging the numbers in the input array

# ## Examples / Test Cases

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# ## Data Structures

# - Use the input array to calculate the solution

# ## Algorithm

# - Initialize integer sum
# - Loop through input array
#   - Add each integer to sum
# - Divide sum by length of input array
# - Return result of division
