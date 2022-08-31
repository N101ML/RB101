arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

z = arr.sort_by do |sub_arr|
  sub_arr.select do |number|
    number.odd?
  end
end

p z
