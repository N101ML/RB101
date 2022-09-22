# def show_multiplicative_average(array)
#   result = 1.0
#   array.each do |num|
#     result *= num
#   end

#   result = result / (array.size)
#   puts "#{format("%0.3f", result)}"
# end

# Per the suggestion you can also use Enumberable#inject to solve this like below:

def show_multiplicative_average(array)
  result = array.inject(:*)

  result = result.to_f / (array.size)
  puts "#{format("%0.3f", result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
