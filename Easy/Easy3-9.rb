def real_palindrome?(string)
  string.downcase == string.downcase.gsub(/,"/, " ")
end

p  real_palindrome?('madam') == true
p  real_palindrome?('Madam') == true           # (case does not matter)
p  real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p  real_palindrome?('356653') == true
p  real_palindrome?('356a653') == true
p  real_palindrome?('123ab321') == false
