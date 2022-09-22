# def sequence(number)
#   new_arr = []
#   count = number
#   loop do
#     new_arr << count
#     count -= 1
#     break if count == 0
#   end

#   new_arr.reverse
# end

def sequence(number)
  number > 0 ? (1..number).to_a : neg_seq(number)
end

def neg_seq(neg_num)
  neg_arr = []
  counter = neg_num
  loop do
    neg_arr << counter
    counter += 1
    break if counter == 0
  end

  neg_arr.sort
end

p  sequence(5) == [1, 2, 3, 4, 5]
p  sequence(3) == [1, 2, 3]
p  sequence(1) == [1]
p  sequence(-1) == [-1]
p  sequence(-7) == [-7, -6, -5, -4, -3, -2, -1]
