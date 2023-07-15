require 'pry'

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |num|
    count = 0
    loop do
      new_arr << (num * arr2[count])
      count += 1
      break if count == arr2.size
    end
  end

  new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
