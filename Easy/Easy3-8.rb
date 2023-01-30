require 'pry'

def palindrome?(string)
  string == string.reverse
end

def array_palindrome?(array)
  array.flatten == array.flatten.reverse
end

def universal_palindrome?(palindrome)
  palindrome.to_s == palindrome.reverse.to_s
  # binding.pry
end


p  universal_palindrome?('madam') == true
p  universal_palindrome?('Madam') == false          # (case matters)
p  universal_palindrome?("madam i'm adam") == false # (all characters matter)
p  universal_palindrome?('356653') == true

p universal_palindrome?([2, 3, 4, 3, 2]) == true
