# My (very wrong) attempt. This gives works it's just very ugly

# def stringy(int)
#   string = ''
#   counter = int

#   loop do
#     string << '1'
#     counter -= 1
#     break if counter == 0
#     string << '0'
#     counter -= 1
#     break if counter == 0
#   end
  
#   string
# end

# Answer below is (much better) solution given in exercise (including additional question at bottom of exercise):

def stringy(int, opt_int=1)
  array = []

  int.times do |number|
    if opt_int == 1
      number = number.even? ? 1 : 0
      array << number
    elsif opt_int == 0
      number = number.odd? ? 1 : 0
      array << number
    end
  end

  array.join
end

stringy(6, 0) == '101010'
stringy(9, 1) == '101010101'
stringy(4, 0) == '1010'
stringy(7, 1) == '1010101'

# PEDAC (never completed, probably the reason my solution wasn't nearly as good as it shoudl have been)
# ## Problem

# - Input: a positive integer
# - Output: A string
#   - Alternating 1 and 0
#   - Start with 1
#   - Length of string matches integer given

# ## Examples / Test Cases

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# ## Data Structures

# - Input integer
# - Output string

# ## Algorithm

# - Initialize empty string
# - 
