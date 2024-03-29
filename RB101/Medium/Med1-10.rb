require 'pry'

def fibonacci_last(nth)
    nth_arr = [1, 1]
    last_arr = []
  
    (nth - 2).times do |num|
      nth_arr << nth_arr[-1] + nth_arr[-2]
    end
  
    last_arr << nth_arr.last
    last_arr.to_s.chars[-2].to_i
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789)
