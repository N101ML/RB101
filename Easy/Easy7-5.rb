# def staggered_case(string)
#   new_string = string.chars.each_with_index do |letter, index|
#     if index.even?
#       letter.upcase!
#     elsif index.odd?
#       letter.downcase!
#     end
#   end
  
#   new_string.join
# end

# Further Exporation: (Using the provided solution to add a default parameter)

def staggered_case(string, letter = true)
  result = ''
  need_upper = letter
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  p result
end

p  staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p  staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
p  staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'
