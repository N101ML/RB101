# def interleave(arr1, arr2)
#   counter = 0
#   new_arr = []

#   loop do
#     new_arr << arr1[counter] << arr2[counter]
#     counter += 1
#     break if counter == arr1.size
#   end

#   new_arr
# end

# # Modified my original solution by using each_with_index:
# def interleave(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |_, counter|
#     new_arr << arr1[counter] << arr2[counter]
#     counter += 1
#   end
#   new_arr
# end

# Further Exploration:

def interleave(array1, array2)
  result = array1.zip(array2)
  result.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
