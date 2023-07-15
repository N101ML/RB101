require 'pry'

def century(year)
  century = 0
  while year > 1
    year -= 100
    century += 1
  end
  if year == 1
    century += 1
  end
  string_year = century.to_s
  string_year + century_suffix(century)
  
  # if string_year.end_with?('1')
  #   string_year << 'st'
  # elsif string_year.end_with?('2')
  #   string_year << 'nd'
  # elsif string_year.end_with?('3')
  #   string_year << 'rd'
  # else 
  #   string_year << 'th'
  # end
  # string_year
end

## Original solution above (Did not solve for final 3). Solution below inspired by solution in assignment:

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  
  case last_digit
  when 1
    "st"
  when 2
    "nd"
  when 3
    "rd"
  else
    "th"
  end
end


p  century(2000) == '20th'
p  century(2001) == '21st'
p  century(1965) == '20th'
p  century(256) == '3rd'
p  century(5) == '1st'
p  century(10103) == '102nd'
p  century(1052) == '11th'
p  century(1127) == '12th'
p  century(11201) == '113th'
