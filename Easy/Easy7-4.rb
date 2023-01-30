UPPERCASE = ("A".."Z")
LOWERCASE = ("a".."z")

def swapcase(string)
  new_string = string.chars.map do |letter|
    if UPPERCASE.include?(letter)
      letter.downcase
    elsif LOWERCASE.include?(letter)
      letter.upcase
    else
      letter
    end
  end

 new_string.join
end

p  swapcase('CamelCase') == 'cAMELcASE'
p  swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
