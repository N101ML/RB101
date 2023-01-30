require 'pry'

def next_bigger_num(number)
  new_number = number.dup
  orig_num_array = number.digits.reverse
  final_num = 0

  loop do
    new_number += 1
    new_number_array = new_number.digits.reverse
    result = orig_num_array.all? do |num|
                      new_number_array.include?(num)
    end

    if result == true
      final_num = new_number
      break
    elsif new_number.digits.size > number.digits.size
      final_num = -1
      break
    end

  end
final_num

end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(531) == -1
p next_bigger_num(531) == -1 
p next_bigger_num(123456789) == 123456798
