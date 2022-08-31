# def reverse_sentence(orig_string)
#   new_array = []
#   new_string = ''

#   new_array = orig_string.split.reverse

#   new_array.each do |word|
#     new_string << word + " "
#   end

#   new_string.strip
# end

## Answer below comes from exercises 

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''


# ## Problem

# - Input: Takes in one argument, a string
# - Output: Returns a new string
#   - String is reverse of input string's words
#   - Returns new phrase, does not print
# - Case sensitivity is maintained

# ## Examples / Test Cases

# - puts reverse_sentence('Hello World') == 'World Hello'
# - puts reverse_sentence('Reverse these words') == 'words these Reverse'
# - puts reverse_sentence('') == ''
# - puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# ## Data Structures

# - Input and return are strings.
# - Use an array from input to output in order to change order

# ## Algorithm

# - Create empty array
# - Create new string
# - Assign input string objects into new array
# - Iterate through array from the end of string to beginning
#   - Assign those strings to new string
# - Return new string
