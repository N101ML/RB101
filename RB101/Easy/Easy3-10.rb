def palindromic_number?(num)
  num.digits == num.digits.reverse
  # num.to_s == num.to_s.reverse
end


p  palindromic_number?(34543) == true
p  palindromic_number?(123210) == false
p  palindromic_number?(22) == true
p  palindromic_number?(5) == true
p  palindromic_number?(0003000) == true
