def prompt(string)
  puts "==> " + string
end

number_prompt_array = %w( 1st 2nd 3rd 4th 5th last)
array = []
last_num = 0
counter = 0

loop do
  prompt("Enter the #{number_prompt_array[counter]} number: ")
  array << gets.chomp.to_i
  counter += 1

  if counter == 5
    prompt("Enter the #{number_prompt_array[counter]} number: ")
    last_num = gets.chomp.to_i
    break
  end
end

if array.include?(last_num)
  puts "The number #{last_num} appears in #{array}."
else
  puts "The number #{last_num} does not appear in #{array}."
end
