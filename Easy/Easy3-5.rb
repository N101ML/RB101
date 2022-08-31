def multiply(int_1, int_2)
  int_1 * int_2
end

def square(main_int)
  multiply(main_int, main_int)
end

## This solution below is for Further Exploration but USED OTHER STUDENT EXAMPLES, not original work:

def power_to_nth(base, power)
  total = 1
  power.times { total = multiply(base, total) }
  total
end

p power_to_nth(5, 3)
