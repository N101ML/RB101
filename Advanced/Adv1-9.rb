require 'pry'

def egyptian(rational_input)
  count = 1
  work_array = []
  result_array = []
  initial_rational = rational_input

  loop do
    if Rational(1, count) <= rational_input
      work_array << Rational(1, count)
      rational_input = rational_input - Rational(1, count)
    end
    count += 1

    break if work_array.sum == initial_rational
  end

  work_array.each do |num|
    result_array << num.denominator
  end
  result_array
end

def unegyptian(array)
  rat_num = 0
  array.each do |denom|
    rat_num += Rational(1, denom)
  end

  rat_num

end

p  unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p  unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p  unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p  unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p  unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p  unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p  unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p  unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

p  egyptian(Rational(2, 1)) == [1, 2, 3, 6]
p  egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p  egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
