puts "What is your name?"
name = gets.chomp!

if name.end_with?("!")
  name.upcase!
  puts "HELLO #{name.chop!}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

## Solution from exercise below. Doesn't use end_width? but rather [-1] on the name string:

# print 'What is your name? '
# name = gets.chomp

# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
