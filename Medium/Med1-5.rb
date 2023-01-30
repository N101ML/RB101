require 'pry'

# def diamond(diamond_size)
#   top_half(diamond_size)
#   middle(diamond_size)
#   bottom_half(diamond_size)
# end

# def top_half(diamond_size)
#   1.upto(diamond_size - 1) do |line|
#     space = (diamond_size - line) / 2
#     printer(space, line)
#   end
# end

# def bottom_half(diamond_size)
#   (diamond_size - 1).downto(1) do |line|
#     space = (diamond_size - line) / 2
#     printer(space, line)
#   end
# end

# def printer(space, line)
#   if line.odd?
#     print " " * space
#     print "*" * line
#     puts " " * space
#   end
# end

# def middle(diamond_size)
#   puts "*" * diamond_size
# end


# Solution from Exercise:

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end


def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(5)
