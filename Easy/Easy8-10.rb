def center_of(string)
  length = string.length
  string.size.odd? ? string[length / 2] : string[(length / 2) - 1].concat(string[length / 2])
end

p  center_of('I love ruby') == 'e'
p  center_of('Launch School') == ' '
p  center_of('Launch') == 'un'
p  center_of('Launchschool') == 'hs'
p  center_of('x') == 'x'
