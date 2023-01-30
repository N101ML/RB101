# def find_dup(array)
#   new_hsh = {}
#   answer = 0 

#   array.each do |num|
#     new_hsh[num] = 0
#   end

#   array.each do |num|
#     new_hsh[num] += 1
#   end

#   new_hsh.each do |key, value|
#     if value == 2
#       answer = key
#     end
#   end

#   answer
  
# end

# Solution from assignment:

def find_dup(array)
  array.find { |elem| array.count(elem) == 2}
end

p  find_dup([1, 5, 3, 1]) == 1
p  find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
            85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
            40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
            7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

=begin
# PEDAC:

### Input:
- An unordered array

### Output: 
- An integer representing the number that is a duplicate in the argument array

### Requirements/Rules: 
- Every number occurs once EXCEPT the value we are looking for
- There is a pair of duplicate numbers in the argument array
- Numbers are between 1 and 99

### Model:
- Iterate through the argument array and keep count of how many times a number appears. When there is a number with 2 occurences it should be returned

### Examples / Test Cases: 
````
find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
````
### Data Structure
- A hash to store number: frequency

### Algorithm
- Initialize `new_hsh`
- Iterate through arugment array and store the number: 0 in `new_hsh`
- Iterate again through argument array and add 1 to value when a number is found
- If any value == 2, store in `answer`
- Return `answer`
