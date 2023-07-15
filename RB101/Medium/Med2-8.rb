require 'pry'

def featured(starting_number)
  (starting_number + 1).upto(9_999_999_999) do |number|
    if number % 7 == 0
      if number.odd?
        if number.digits.reverse == number.digits.reverse.uniq
          return number
        end
      end
    end
  end
  puts "There is no possible number that fufills those requirements."
end

p  featured(12) == 21
p  featured(20) == 21
p  featured(21) == 35
p  featured(997) == 1029
p  featured(1029) == 1043
p  featured(999_999) == 1_023_547
p  featured(999_999_987) == 1_023_456_987

## Next step: figure out how to solve for the last attempt below:

featured(9_999_999_999)
