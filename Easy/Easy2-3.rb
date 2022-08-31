# def tip_calc
#   puts "What is the bill?"
#   bill = gets.to_f

#   puts "What is the tip percentage?"
#   tip = (gets.to_f) / 100

#   tip_total = (bill * tip)
#   total = bill + tip_total

#   puts "The tip is $#{tip_total}"
#   puts "The total is $#{total}"

# end

# tip_calc

## Further Exploration:

def tip_calc
  puts "What is the bill?"
  bill = gets.to_f

  puts "What is the tip percentage?"
  tip = (gets.to_f) / 100

  tip_total = (bill * tip)
  total = bill + tip_total

  puts "The tip is $%0.2f" % [tip_total]
  puts "The total is $%0.2f" % [total]

end

tip_calc
