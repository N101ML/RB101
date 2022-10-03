def balanced?(string) # Looked at solution as I struggled. Tried using regex but couldn't solve the last 2 
  number_of_parens = 0

  string.each_char do |char|
    number_of_parens += 1 if char == '('
    number_of_parens -= 1 if char == ')'
    break if number_of_parens < 0
  end

  number_of_parens == 0? true : false
end

p  balanced?('What (is) this?') == true
p  balanced?('What is) this?') == false
p  balanced?('What (is this?') == false
p  balanced?('((What) (is this))?') == true
p  balanced?('((What)) (is this))?') == false
p  balanced?('Hey!') == true
p  balanced?(')Hey!(') == false
p  balanced?('What ((is))) up(') == false
