# def triangle(integer)
#   count = 1
#   loop do
#     print " " * (integer - count)
#     puts "*" * (count)
#     count += 1
#     break if count > integer
#   end
# end

def triangle(integer)
  star = integer
  space = 0
  
  integer.times do |n|
    puts (" " * space) + ("*" * star)
    star -= 1
    space += 1
  end
end

triangle(9)
