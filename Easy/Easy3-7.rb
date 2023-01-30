require 'pry'
# def oddities(arr)
#   new_arr = []
#   arr.each_index do |index|
#   if index.even?
#     new_arr << arr[index]
#   end
# end
#   new_arr
# end


## Answer below inspired by solution in assignment
# def oddities(arr)
#   new_arr = []
#   counter = 0
#   loop do 
#     break if arr.empty?
#     new_arr << arr[counter]
#     counter += 2
#     break if counter >= arr.size
#     # binding.pry
#   end
#   new_arr
# end

def oddities(arr)
  new_arr = []
  arr.each do |element|
    new_arr << element
    arr.shift
  end
  new_arr
end



p  oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p  oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p  oddities(['abc', 'def']) == ['abc']
p  oddities([123]) == [123]
p  oddities([]) == []
