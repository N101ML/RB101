def is_odd?(int)
  if int.abs % 2 == 0
    false
  else
    true
  end
end

## Solution below was given from the Small Problems Questions

# def is_odd?(int)
#   int % 2 == 1
# end

# The method below uses Integer#remainder per the exercises requirements

def is_odd?(integer)
  integer.remainder(2).abs == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
