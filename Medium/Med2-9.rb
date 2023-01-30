require 'pry'

def bubble_sort!(array)
  loop do
    counter_first = 0
    counter_second = 1
    sorts = 0
    loop do
      if array[counter_first] > array[counter_second]
        array[counter_first], array[counter_second] = array[counter_second], array[counter_first]
        sorts += 1
      end
      counter_first += 1
      counter_second += 1
      break if counter_second >= array.size
    end
    break if sorts == 0
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
