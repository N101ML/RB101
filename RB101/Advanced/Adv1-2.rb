require 'pry'

# def star(size)
#   midpoint = size / 2
  
#   print_top_row(midpoint)
#   print_middle_row(size)
#   print_bottom_row(midpoint)
# end

# def print_top_row(midpoint)
#   spaces_before = 0
#   spaces_between = midpoint - 1

#   midpoint.times do 
#     print " " * spaces_before
#     print "*"
#     print " " * spaces_between
#     print "*"
#     print " " * spaces_between
#     print "*"
#     puts " " * spaces_between
#     spaces_before += 1
#     spaces_between -= 1
#   end
# end

# def print_middle_row(size)
#   puts "*" * size
# end

# def print_bottom_row(midpoint)
#   spaces_before = midpoint - 1
#   spaces_between = 0

#   midpoint.times do 
#     print " " * spaces_before
#     print "*"
#     print " " * spaces_between
#     print "*"
#     print " " * spaces_between
#     print "*"
#     puts " " * spaces_between
#     spaces_before -= 1
#     spaces_between += 1
#   end
# end

# Solution below comes from exercise:

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  binding.pry
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

star(7)
