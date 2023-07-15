def reversed_number(num)
  num.to_s.chars.reverse.join.to_i # My solution
  num.to_s.reverse.to_i # Solution from exercise
end

p  reversed_number(12345) == 54321
p  reversed_number(12213) == 31221
p  reversed_number(456) == 654
p  reversed_number(12000) == 21 # No leading zeros in return value!
p  reversed_number(12003) == 30021
p  reversed_number(1) == 1
