def merge(arr1, arr2)
  new_arr = []

  new_arr << arr1
  new_arr << arr2

  new_arr.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=begin
# PEDAC:
### Input:
- Two arrays

### Output: 
- Return new array that contains all of the values from the argument arrays

### Requirements/Rules: 
- There should be no duplicates

### Model:
- Combine the two argument arrays and remove duplicates

### Examples / Test Cases: 
````
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
````

### Data Structure
- An array to store the new values

### Algorithm
- Initalize a `new_arr`
- `<<` both arrays (separately) into `new_array`
- Remove duplicates
