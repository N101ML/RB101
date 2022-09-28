# def fibonacci(number)
#   return 1 if number <= 2
#   fibonacci(number - 1) + fibonacci(number - 2)
# end

# Solution from exercise that uses tail recursion: 

def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci(8000)
