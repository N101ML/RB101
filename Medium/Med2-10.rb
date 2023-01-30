require 'pry'

def sum_square_difference(number)
  left_side = 0
  right_side = 0
  1.upto(number) do |num|
    left_side += num
  end
  left_side = left_side ** 2

  1.upto(number) do |num|
    right_side += (num ** 2)
  end

  left_side - right_side
end

p  sum_square_difference(3) == 22
p  sum_square_difference(10) == 2640
p  sum_square_difference(1) == 0
p  sum_square_difference(100) == 25164150
