require 'pry'

def multisum(num)
  new_array = []

  while num > 1
    if num % 3 == 0
      new_array << num
    elsif num % 5 == 0 
      new_array << num
    end
    num -= 1
  end

  new_array.inject(:+)
end


p  multisum(3) == 3
p  multisum(5) == 8
p  multisum(10) == 33
p  multisum(1000) == 234168
