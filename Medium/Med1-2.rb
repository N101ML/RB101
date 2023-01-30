def rotate_rightmost_digits(number, rotate_num)
  num_arr = number.digits.reverse
  num_arr[-rotate_num..-1] = rotate_array(num_arr[-rotate_num..-1])
  num_arr.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Solution comes from exercise. Spent considerable time spinning my wheels with no solution. 

p  rotate_rightmost_digits(735291, 1) == 735291
p  rotate_rightmost_digits(735291, 2) == 735219
p  rotate_rightmost_digits(735291, 3) == 735912
p  rotate_rightmost_digits(735291, 4) == 732915
p  rotate_rightmost_digits(735291, 5) == 752913
p  rotate_rightmost_digits(735291, 6) == 352917
