def halvsies(array)
  h1 = []
  h2 = []

  if array.size.odd?
    halfway = (array.size / 2) + 1
    slicer(array, halfway)
  else
    halfway = (array.size / 2)
    slicer(array, halfway)
  end

end

def slicer(array, mid)
  h1 = array.slice(0, mid)
  h2 = array.slice(mid, array.size)
  returned_array = []
  returned_array << h1
  returned_array << h2

  returned_array
end

p  halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p  halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p  halvsies([5]) == [[5], []]
p  halvsies([]) == [[], []]


=begin

# PEDAC:
### Input:
- An array

### Output: 
- A pair of nested arrays

### Requirements/Rules: 
- Output must be two arrays that are nested
- First half of array in one array, the other half in the other; both in a singl array
- If the argument contains an array that is odd, the 'extra' element should be in the first array

### Model:
- Determine where the argument array should be split and divide them into 2 separate arrays

### Examples / Test Cases: 
````
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
````
### Data Structure
- Nested arrays

### Algorithm
- Initialize two new arrays: `h1_arr` and `h2_arr` as well as `return_arr`
- Determine if odd
  - If odd: Segment the array by dividing by 2
