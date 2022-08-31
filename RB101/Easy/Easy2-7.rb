# (1..99).each do |x|
#   puts x if x % 2 == 0
# end

# Solution below comes from exercise:

value = 1
while value <= 99
  puts value if value.even?
  value+= 1
end
