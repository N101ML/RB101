def buy_fruit(array)
  new_arr = []

  array.each do |arr|
    arr[1].times do
      new_arr << arr[0]
    end
  end

  new_arr
end

# Solution from exercise:

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]
