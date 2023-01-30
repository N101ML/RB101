require 'pry'

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

def rotate90(matrix)
  column_size = matrix.first.size
  row_size = matrix.size
  result = []

  (0...column_size).each do |column_index|
    new_row = (row_size - 1).downto(0).map {|row_index| matrix[row_index][column_index]}
    result << new_row
  end

  result
end

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# Further Exploration:

# To future Mike: maybe a loop do that incorporates an added argument to rotate beyond 90 degrees? Essentially
# doing the same thing 1-4 times.
