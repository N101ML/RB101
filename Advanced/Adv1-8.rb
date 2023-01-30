require 'pry'

def merge_sort(array)
  return array if array.size == 1
  
  l1 = array[0...(array.size/2)]
  l2 = array[array.size / 2...array.size]
  binding.pry
  l1 = merge_sort(l1)
  l2 = merge_sort(l2)

  merge(l1, l2)
end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end


p merge_sort([9, 5, 7, 1])
