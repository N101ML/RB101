def short_long_short(string_a, string_b)
  new_string = ''
  if string_a.length > string_b.length
    new_string << string_b + string_a + string_b
  else
    new_string << string_a + string_b + string_a
  end
  new_string
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
