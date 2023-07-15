# def penultimate(string)
#   length = string.split.size
#   arr = string.split
#   arr[length - 2]
# end

# Further Exploration: Some additions from student provided solutions

def penultimate(string)
  return string if string.empty? || string.split.size == 1
  string_arr = string.split
  string_middle = string.split.size / 2
  string_arr[string_middle]
end

# p  penultimate('last word') == 'last'
# p  penultimate('Launch School is great!') == 'is'

p penultimate('Hey what are you doing there')
p penultimate("")
p penultimate("hey")
