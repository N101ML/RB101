# def reverse(orig_array)
#   new_arr = []
#   counter = orig_array.length

#   while new_arr.length < orig_array.length
#     new_arr << orig_array[counter - 1]
#     counter -= 1
#   end

#   new_arr

# end

# Further Exploration solution from student below:

def reverse(array)
  array.each_with_object([]) { |el, new_arr| new_arr.prepend(el)}
end

p  reverse([1,2,3,4]) == [4,3,2,1]          # => true
p  reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p  reverse(['abc']) == ['abc']              # => true
p  reverse([]) == []  
