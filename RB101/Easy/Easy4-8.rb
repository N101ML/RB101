require 'pry'

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

# def string_to_signed_integer(string)
#   pos_neg = ''

#   if string.start_with?('-')
#     string = string.delete(string[0])
#     pos_neg = '-'
#   elsif string.start_with?('+')
#     string = string.delete(string[0])
#     pos_neg = '+'
#   end

#   total_val = string_to_integer(string)
#   if pos_neg == '-'
#     total_val = total_val - total_val - total_val
#   elsif pos_neg == '+'
#     total_val
#   end

#   total_val

# end

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

# Solution from Assignment:

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1]) # [1..-1] will start with the index 1 (skipping the +/- and end with the last index)
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# Answer below for Further Exploration provided from student submissions:
def string_to_signed_integer(string)
  result = string_to_integer(string.delete('^a-z0-9^'))
  string[0] == '-' ? -result : result
end

p  string_to_signed_integer('4321') == 4321
p  string_to_signed_integer('-570') == -570
p  string_to_signed_integer('+100') == 100
