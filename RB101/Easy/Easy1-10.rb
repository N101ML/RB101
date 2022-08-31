# def calculate_bonus(int, bool)
#   if bool == true
#     (int / 2)
#   else
#     0
#   end
# end

## The solution below was my 2nd strategy for solving AND the same solution from the exercise nbd:

def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
