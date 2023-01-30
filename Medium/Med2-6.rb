def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.inject(:+) != 180, angles.any? {|angle| angle <= 0 }
    :invalid
  when angles.any? {|angle| angle == 90} 
    :right
  when angles.any? {|angle| angle > 90}
  :obtuse
  else
    :acute
  end
end

p  triangle(60, 70, 50) == :acute
p  triangle(30, 90, 60) == :right
p  triangle(120, 50, 10) == :obtuse
p  triangle(0, 90, 90) == :invalid
p  triangle(50, 50, 50) == :invalid
