def get_grade(grade1, grade2, grade3)
  mean_grade = (grade1 + grade2 + grade3) / 3
  grade = ""

  case mean_grade
  when 90..1000
    grade = "A"
  when 80..89
    grade = "B"
  when 70..79
    grade = "C"
  when 60..69
    grade =  "D"
  else
    grade = "F"
  end
  grade
end

p  get_grade(95, 90, 93) == "A"
p  get_grade(50, 50, 95) == "D"
