require 'pry'

# def word_cap(string)
#   new_string = string.split.map { |word| word.capitalize }.join(" ")
# end

# Further Exploration from provided solutions:

# def word_cap(string)
#   string.downcase.split.each { |word| word[0] = word[0].swapcase}.join(" ")
# end

p  word_cap('four score and seven') == 'Four Score And Seven'
p  word_cap('the javaScript language') == 'The Javascript Language'
p  word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
