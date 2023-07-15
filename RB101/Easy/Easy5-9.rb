require 'pry'

# def crunch(string)
#   new_arr = string.chars
#   returned_string = ''

#   new_arr.each_with_index do |char, index|
#     returned_string << char unless string[index + 1] == char
#   end

#   returned_string
# end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p  crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p  crunch('4444abcabccba') == '4abcabcba'
p  crunch('ggggggggggggggg') == 'g'
p  crunch('a') == 'a'
p  crunch('') == ''

# PEDAC:
# ### Input: 
# - A string argument

# ### Output: 
# - A new string argument

# ### Requirements/Rules: 
# - Cannot use `String#squeeze` or `String#squeeze!`
# - Return string cannot contain the same consecutive characters

# ### Model:
# - Take a string input and remove the consecutive characters from the string that is returned

# ### Examples / Test Cases: 
# ````
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
# ````
# ### Data Structure
# - An array to hold the inputted string's chars

# ### Algorithm
# - Convert string into `new_arr`
