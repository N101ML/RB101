require 'pry'

def find_fibonacci_index_by_length(size)
  array = [1, 1]
  counter = 0
  
  loop do
    new_value = array[counter] + array[counter + 1]
    array << new_value
    counter += 1
    break if new_value.to_s.length >= size
  end

  array.length
end

p  find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p  find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p  find_fibonacci_index_by_length(10) == 45
p  find_fibonacci_index_by_length(100) == 476
p  find_fibonacci_index_by_length(1000) == 4782
p  find_fibonacci_index_by_length(10000) == 47847

# PEDAC:

# ### Input:
# - An integer

# ### Output: 
# - An integer 

# ### Requirements/Rules: 
# - Fibonacci rules apply
# - Argument is always >= 2


# ### Model:
# - Need to perform fibonacci sequence until last value == the input

# ### Examples / Test Cases: 
# ````
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847
# ````
# ### Data Structure
# - A starting array of `[1,1]` to which we add fibonacci numbers until we reached required input length

# ### Algorithm
# - start with `array = [1, 1]`
# - set `counter = 0`
# - sum of index at counter and counter + 1 = new value to place into array
# - Place `new_value` into array and increase counter += 1
# - Check to see if `new_value` meets requirements (input size)
# - If so, count the number of values in `array`. If not, continue building sequence
