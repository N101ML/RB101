def rotate_array(arr)
  working_arr = arr.dup
  p holder = working_arr.shift

  working_arr.push(holder)
  working_arr
end

# Solution from exercise:

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Further Exploration:

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end


# p  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p  rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p  rotate_array(x) == [2, 3, 4, 1]   # => true
# p  x == [1, 2, 3, 4]                 # => true

=begin
# PEDAC:

### Input:
- An array

### Output:
- A new array

### Requirements/Rules: 
- The original array should not be modified
- Must return a new array
- Cannot use Array#rotate

### Model:
- Move the first element of an argument array to the end of a new array

### Examples / Test Cases: 
````
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
````
### Data Structure
- A new array

### Algorithm
- Initialize a new `working_arr` that is the same as the argument array
- Remove the first element of `working_arr` and store in a new variable `holder`
- Place `holder` at the end of `working_arr`
- Return `working_arr`
