def digit_list(integer)
  integer.digits.reverse
end

## Below is the example given

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

## This is the example exaplined without the last line's 'syntactical sugar'
def digit_list(number)
  number.to_s.chars.map { |x| x.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             #
