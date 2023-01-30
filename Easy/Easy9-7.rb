def swap_name(name)
  count = name.split.size
  arr_name = name.split
  new_arr = []
  loop do
    new_arr << arr_name[count - 1]
    count -= 1
    break if count == 0
  end

  new_arr.join(", ")
end

# Solution below comes from exercise:

def swap_name(name)
  name.split.reverse.join(", ")
end

swap_name('Joe Roberts') == 'Roberts, Joe'
