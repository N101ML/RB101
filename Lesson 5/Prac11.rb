arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

z = arr.map do |sub_arr|
  sub_arr.select do |integers|
  integers % 3 == 0
  end
end

p z
