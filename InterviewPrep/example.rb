=begin
# input: str
# output: integer
# rules:
  # find the substring of str that is a palindrome and has the longest length
  # if length of str is 0, return 0
# examples:
  #
# data structure:
  # array
# algorithm:
  # find all substrings of str
=end

def longest_palindrome(str)
  result_arr = []

  0.upto(str.size - 1) do |first|
    first.upto(str.size - 1) do |second|
      result_arr << str[first..second].size if str[first..second] == str[first..second].chars.reverse.join
    end
  end
  p result_arr.max
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
