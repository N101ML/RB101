# require 'pry'

# def running_total(arr_of_num)
#   final_array = []
#   place_holder = []
#   counter = 0
#   loop do
#     break if arr_of_num.empty?
#     place_holder << arr_of_num[counter]
#     final_array << place_holder.inject(:+)
#     # binding.pry
#     counter += 1
#     break if counter == arr_of_num.length
#   end
#   final_array
# end

def running_total(array)
  sum = 0
  array.map { |value| sum += value}
end

p  running_total([2, 5, 13]) == [2, 7, 20]
p  running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p  running_total([3]) == [3]
p  running_total([]) == []
