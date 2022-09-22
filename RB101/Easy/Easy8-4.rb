require 'pry'

# def substrings(string)
#   new_arr = []
#   counter = 0
#   loop do
#     counter.upto(string.size - 1) do |count|
#       new_arr << string.slice(counter..count)
#       # binding.pry
#     end
#     counter += 1
#     break if counter > string.size
#   end

#   p new_arr
# end

# Solution provided (that usese leading_substring method created in previous assignment):

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p  substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde',
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
  ]
