
def calc_sum(int)
  # sum = 0
  # (1..int).each do |x|
  #   sum += x
  # end

  sum = (1..int).inject(:+) ## Further Exploration asks to use inject method
  puts "The sum of the integers between 1 and #{int} is #{sum}."
end

def calc_prod(int)
  # product = 1
  # (1..int).each do |x|
  #   product *= x
  # end

  product = (1..int).inject(:*) # Inject method here per Further Exploration requirements
  puts "The product of the integers between 1 and #{int} is #{product}."
end

int = 0

loop do
  puts ">> Please enter an integer greater than 0"
  int = gets.chomp.to_i
  break if int > 0
  puts ">> ERROR: You entered an incorrect number."
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp

if answer == 's'
  calc_sum(int)
elsif answer == 'p'
  calc_prod(int)
else 
  puts "You did not enter an accurate operation."  ## Added this after looking at solution
end
