# require 'pry'

# SYMBOLS = ")(*&^%$@!~`_-'"

# def cleanup(string)
#   new_arr = []
#   counter = 0

#   string.chars.each do |char|
#     if SYMBOLS.include?(char)
#       new_arr << ' ' unless new_arr.last == ' '
#     elsif ('a'..'z').include?(char)
#       new_arr << char
#     end
#   end

#   p new_arr.join
# end

# Solution above was my attempt that I could not solve

# Solution below comes from the assignment:

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '

# ### Input: 
# - A string containing lower case letters and symbols

# ### Output: 
# - The same string with changes made to the symbols

# ### Requirements/Rules: 
# - All words will be lowercased
# - String will have non-alphabetic characters
# - If a non-alphabetic character occurs more than once in a row, only replace with a single space 
# - Should never have consecutive spaces in a row


# ### Model:
# - Removal of non-alphabetic characters that are replaced by spaces but only a single space at a time.

# ### Examples / Test Cases: 
# ````
# cleanup("---what's my +*& line?") == ' what s my line '
# ````
# ### Data Structure
# - An array of the inputted string

# ### Algorithm
# - Initialize `new_arr` and convert the string to an array
# - Iterate through `new_arr` looking for a symbol
#   - When a symbol is found, insert a space into `new_arr`
#   - Continue iterating until a letter is found
#   - When a letter is found, place all letters into `new_array` until you find another symbol or a space
#   - Repeat this process until the end of the string
