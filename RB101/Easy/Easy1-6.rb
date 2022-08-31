# def reverse_words(string)
#   arr =[]
#   arr = string.split

#   arr.each do |word|
#     if word.length >= 5
#       word.reverse!
#     end
#   end

#   arr.join(" ")
# end

# Solution from exercise below:

def reverse_words(string)
  arr = []
  
  string.split.each do |word|
    word.reverse! if word.length >= 5
    arr << word
  end

  arr.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


# ## Problem

# - Input: a string containing one or more words
# - Output: Return same string
#   - Words >= 5 have characters reversed
#   - Output string contains only letters and spaces
#   - Only have spaces when more than one word is present

# ## Examples / Test Cases

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# ## Data Structures

# - An input string
# - An array if there are multiple words
# - The original output string is changed to reflect changes

# ## Algorithm

# - Convert input string into array
# - Loop if any word contains >= 5 letters, reverse the character order
# - Convert array to string
# - Return string
