require 'date'
require 'pry'

def friday_13th(year)
  occurences = 0
  1.upto(12) do |month|
    d = Date.new(year,month,13)
    if d.friday?
      occurences += 1
    end
  end
  occurences
end

p  friday_13th(2015) == 3
p  friday_13th(1986) == 1
p  friday_13th(2019) == 2
