def reverse!(orig_array)
 
  if orig_array.empty?
    return []
  end
 
  new_arr = []
  new_arr.replace(orig_array)
  counter = new_arr.length
  orig_array.clear

  loop do
    orig_array << new_arr[counter - 1]
    counter -= 1
    break if counter == 0
  end

  orig_array

end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

=begin
PEDAC:

### Input:
- An array

### Output: 
- The same array, mutated

### Requirements/Rules: 
- Must return the same array with the same object_id

### Model:
- Change the values of the inputted array so they are reversed, while keeping the same array

### Examples / Test Cases: 
````
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
````
### Data Structure
- An array

### Algorithm
- Create `new_arr`
- Place values from inputted array into `new_array`
- Initialize a `counter`
- Find length of `new_array`
- Place last value (using length) into first value of `new_array` (using counter)
- End when new_array is empty
