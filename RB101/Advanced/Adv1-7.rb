require 'pry'

# def merge(arr1, arr2)
#   result = []
#   counter = 0

#   arr1.each do |value|
#     if value > arr2[counter]
#       result << arr2[counter]
#       result << value
#     else
#       result << value
#       result << arr2[counter]
#     end
#     counter += 1
#   end
#   result

# end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    binding.pry
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

# p  merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p  merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p  merge([], [1, 4, 5]) == [1, 4, 5]
# p  merge([1, 4, 5], []) == [1, 4, 5]
