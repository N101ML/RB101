require 'pry'

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  counter = 0
  new_arr = []
  matrix.size.times do
    sub_arr = [] 
    sub_arr << matrix[0][counter]
    sub_arr << matrix[1][counter]
    sub_arr << matrix[2][counter]
    new_arr << sub_arr
    counter += 1
  end
  new_arr
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
