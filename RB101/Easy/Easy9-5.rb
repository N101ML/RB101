# require 'pry'

# ALPHA = ("A".."Z")

# def uppercase?(string)
#   string.chars.any? {|element| ALPHA.include?(element)}
# end

# My solution above did not solve every test case. The solution provided from exercise below does:

def uppercase?(string)
  string == string.upcase
end

p  uppercase?('t') == false
p  uppercase?('T') == true
p  uppercase?('Four Score') == false
p  uppercase?('FOUR SCORE') == true
p  uppercase?('4SCORE!') == true
p  uppercase?('') == true
