# require 'pry'
# # This is my soltion that did not satisfy the 4th problem
# def include?(array, search_value)
#   answer = 0
#   answer = array.find { |elem| array.count(search_value) == 1}
#   answer == 1 ? true : false
# end

# Solution from assignment:

def include?(array, value)
  !!array.find_index(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p  include?([], 3) == false
p  include?([nil], nil) == true
p  include?([], nil) == false
