puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

time_now = Time.now # should have combined this with the line below per the solution
year = time_now.year
years_left = retire_age - age
retirement_year = year + years_left

puts "It's #{year}. You will retire in #{retirement_year}."
puts "You only have #{years_left} years of work to go!"
