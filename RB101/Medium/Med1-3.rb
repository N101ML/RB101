require 'pry'

# def max_rotation(integer)
#   new_num_arr = []
#   count = integer.to_s.chars.size
#   loop_num = integer

#   loop do
#     returned_num = rotate_rightmost_digits(loop_num, count)
#     new_num_arr << returned_num.to_s.chars[0].to_i
#     loop_num = returned_num.to_s.chars.drop(1).join.to_i
#     count -= 1
#     break if count == 0
#   end
#   new_num_arr.join.to_i
# end

def rotate_rightmost_digits(number, rotate_num)
  num_arr = number.digits.reverse
  num_arr[-rotate_num..-1] = rotate_array(num_arr[-rotate_num..-1])
  num_arr.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Solution from exercises

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p  max_rotation(735291) == 321579
p  max_rotation(3) == 3
p  max_rotation(35) == 53
p  max_rotation(105) == 15 # the leading zero gets dropped
p  max_rotation(8_703_529_146) == 7_321_609_845
