require 'pry'

def leading_substrings(string)
  new_arr = []
  0.upto(string.size - 1) do |count|
    new_arr << string.slice(0..count)
  end

  new_arr
end

p  leading_substrings('abc') == ['a', 'ab', 'abc']
p  leading_substrings('a') == ['a']
p  leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
