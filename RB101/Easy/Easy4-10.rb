require 'pry'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def signed_integer_to_string(number)

#   if number > 0
#     string = integer_to_string(number)
#     string.prepend("+")
#   elsif number < 0
#     string = integer_to_string(number.abs)
#     string.prepend('-')
#   else
#     string = '0'
#   end

#   string
# end


def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# Solution below is from assignment:

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

# Further Exploration Attempt:

def signed_integer_to_string(number)
  return "0" if number == 0
  result = integer_to_string(number.abs)
  number > 0 ? "+#{result}" : "-#{result}"
 end

p  signed_integer_to_string(4321) == '+4321'
p  signed_integer_to_string(-123) == '-123'
p  signed_integer_to_string(0) == '0'
