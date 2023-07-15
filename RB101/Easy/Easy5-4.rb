require 'pry'

# def swap(string)
#   new_arr = []
#   new_arr = string.split

#   new_arr.map do |word|
#     if word.length > 1
#       first_letter = word[0]
#       last_letter = word[word[-1]]

#       word[0] = last_letter
#       word[-1] = first_letter
#     end
#   end

#   new_arr.join(" ")
# end

# Solution below is from assignment:

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p  swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p  swap('Abcde') == 'ebcdA'
p  swap('a') == 'a'

# PEDAC:

# ### Input: 
# - a string containing one or multiple words

# ### Output: 
# - a string that contains the same elements as the input with the first and last letters swapped

# ### Requirements/Rules: 
# - Case sensitive
# - first and last letters must be swapped
# - Every word contains at least 1 letter

# ### Model:
# - Iterate through each element and identify the first and last characters and then swap. In the event of a single character it should remain the same.

# ### Examples / Test Cases: 
# ````
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'
# ````

# ### Data Structure
# - Array for the inputted string

# ### Algorithm
# - Initialize an array `new_arr`
# - Convert the inputted string to `new_arr`
# - Iterate through each word that is > 1
#   - Identify the length of the word
#   - Swap the first letter of the word with length-1 
#   - Swap the length-1 with the first letter of the word
# - Convert `new_arr` into a string again
