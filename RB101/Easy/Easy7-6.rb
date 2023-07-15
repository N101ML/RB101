ALPHA = ("A".."z")

def staggered_case(string, value = true)
  result = ''
  need_upper = value
  string.chars.each do |char|
    if ALPHA.include?(char)
      if need_upper
        result += char.upcase 
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  p result
end

p  staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p  staggered_case('ALL CAPS') == 'AlL cApS'
p  staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
