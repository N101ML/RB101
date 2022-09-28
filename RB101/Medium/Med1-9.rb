def fibonacci(nth)
  nth_arr = [1, 1]

  (nth - 2).times do |num|
    nth_arr << nth_arr[-1] + nth_arr[-2]
  end

  nth_arr.last
end

p  fibonacci(20) == 6765
p  fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501
