def prompt(string)
  puts "==> " + string
end

first_num = 0
second_num = 0

prompt("Enter the first number: ")
first_num = gets.chomp.to_i

loop do
  prompt("Enter the second number: ")
  second_num = gets.chomp.to_i
  break if second_num > 0
end

sum = first_num + second_num
subtrac = first_num - second_num
mult = first_num * second_num
div = first_num / second_num
remain = first_num % second_num
power = first_num ** second_num


prompt("#{first_num} + #{second_num} = #{sum}")
prompt("#{first_num} - #{second_num} = #{subtrac}")
prompt("#{first_num} * #{second_num} = #{mult}")
prompt("#{first_num} / #{second_num} = #{div}")
prompt("#{first_num} % #{second_num} = #{remain}")
prompt("#{first_num} ** #{second_num} = #{power}")
