def multiply_list(arr1, arr2)
  result_arr = []

  arr1.each_with_index do |num, index|
    result_arr << arr1[index] * arr2[index]
  end

  result_arr
end

def multiply_list(arr1, arr2)
  result = arr1.zip(arr2).map {|arr| arr[0] * arr[1]} # could also use inject here in the block
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
