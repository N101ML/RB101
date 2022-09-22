require 'pry'
# Solution from assignment. Could not solve.
def sum_of_sums(arr)
  result = 0
  helper = 0

  arr.each do |num|
    helper += num
    result += helper
  end

  result
end

# Other solution from assignment:

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

p  sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p  sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p  sum_of_sums([4]) == 4
p  sum_of_sums([1, 2, 3, 4, 5]) == 35
