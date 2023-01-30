def triangle(side_a, side_b, side_c)
  triangle_arr = [side_a, side_b, side_c].sort

  case 
  when invalid_triangle?(triangle_arr)
    :invalid
  when equilateral?(triangle_arr)
    :equilateral
  when scalene?(triangle_arr)
    :scalene
  else
    :isosceles
  end
end

def invalid_triangle?(triangle_arr)
  if triangle_arr.any? {|side| side == 0}
    true
  elsif triangle_arr[0] + triangle_arr[1] < triangle_arr[2]
    true
  else
    false
  end
end

def equilateral?(triangle_arr)
  triangle_arr.all? {|side| side == 3 }
end

def scalene?(triangle_arr)
  triangle_arr.uniq == triangle_arr
end

p  triangle(3, 3, 3) == :equilateral
p  triangle(3, 3, 1.5) == :isosceles
p  triangle(3, 4, 5) == :scalene
p  triangle(0, 3, 3) == :invalid
p  triangle(3, 1, 1) == :invalid
