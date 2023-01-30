require 'pry'
VOWELS = 'aeiouAEIOU'

def remove_vowels(array_of_strings)
  changed_array = array_of_strings.each do |word|
    word.chars.map do |letter|
      word.delete!(letter) if VOWELS.include?(letter)
      # binding.pry
    end
  end
  changed_array
end

# Solution from assignment:

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end

p  remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p  remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p  remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# PEDAC:

# ### Input:
# - An array of strings

# ### Output: 
# - An array of strings

# ### Requirements/Rules: 
# - Vowels are: a, e, i , o, u
# - Remove strings that contain any vowels
# - Keep the same case-sensitivity
# - Keep the array's structure intact

# ### Model:
# - Remove vowels from the array of strings while keeping the array's formatting intact

# ### Examples / Test Cases: 
# ````
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# ````

# ### Data Structure
# - Nested array of which to iterate through

# ### Algorithm
# - Iterate through `input_arr`
#   - Iterate through each string (chars)
#   - If a char is found in `input_arr`, then delete
# - Return string with deletions 
