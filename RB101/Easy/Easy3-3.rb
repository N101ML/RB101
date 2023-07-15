puts "Please write word or multiple words:"
input_phrase = gets.chomp
char_count = input_phrase.count "^ "

puts "There are #{char_count} characters in '#{input_phrase}'."
