require 'pry'
# Below is my pathetic attempt at solving the problem:

# def string_to_integer(string)
#   string.each_char do |num|
#     if num == '1'
#        print 1
#     elsif num == '2'
#        print 2
#     elsif num == '3'
#        print 3
#     elsif num == '4'
#        print 4
#     elsif num == '5'
#        print 5
#     elsif num == '6'
#        print 6
#     elsif num == '7'
#        print 7
#     elsif num == '8'
#        print 8
#     elsif num == '9'
#        print 9
#     else
#        print 0
#     end
#   end
#   print "\n"
# end

# Solution below comes from assignment:

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
  
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# p  string_to_integer('4321') == 4321
# p  string_to_integer('570') == 570

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13,
  'e' => 14, 'f' => 15 
}

def hexadecimal_to_integer(string)
  digits = string.downcase.chars.map { |char| DIGITS[char] }
  digits.reverse!
  
  power = 0
  digits_array = []
  digits.map do |digit|
    digits_array << digit * (16 ** power)
    power += 1
    digits_array
  end


  value = 0
  digits_array.each { |el| value += el}
  value
  # binding.pry 
end

p hexadecimal_to_integer('4D9f') == 19871
puts hexadecimal_to_integer('9c5e')
