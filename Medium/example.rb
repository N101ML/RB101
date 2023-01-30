# def url?(website)
#   !!website.match(/\Ahttps?:\/\/\S+\z/)
# end

# p  url?('http://launchschool.com')   # -> true
# p  url?('https://example.com')       # -> true
# p  url?('https://example.com hello') # -> false
# p  url?('   https://example.com')    # -> false


# def fields(student_info)
#   student_info.split(/[, \t]+/)
# end

# p fields("Pete,201,Student")
# # -> ["Pete", "201", "Student"]

# p fields("Pete \t 201    ,  TA")
# # -> ["Pete", "201", "TA"]

# p fields("Pete \t 201")
# # -> ["Pete", "201"]

# p fields("Pete \n 201")
# # -> ["Pete", "\n", "201"]


# def mystery_math(math)
#   changed_string = math.sub(/[+\-*\/]/, '?')
# end

# p mystery_math('4 + 3 - 5 = 2')
# # -> '4 ? 3 - 5 = 2'

# p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# # -> '(4 ? 3 + 2) / 7 - 1 = 1'


# def mysterious_math(math)
#   changed_string = math.gsub(/[+*\-\/]/, '?')
# end

# p  mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
# p  mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'

# def danish(sentence)
#   changed_sentence = sentence.sub(/\b(apple|blueberry|cherry)\b/, "danish")
# end

# p danish('An apple a day keeps the doctor away')
# # -> 'An danish a day keeps the doctor away'

# p danish('My favorite is blueberry pie')
# # -> 'My favorite is danish pie'

# p danish('The cherry of my eye')
# # -> 'The danish of my eye'

# p danish('apple. cherry. blueberry.')
# # -> 'danish. cherry. blueberry.'

# p danish('I love pineapple')
# # -> 'I love pineapple'


# def format_date(date_string)
# new_date = date_string.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/,'\3.\2.\1')
# end

# p  format_date('2016-06-17') # -> '17.06.2016'
# p  format_date('2016/06/17') # -> '2016/06/17' (no change)

# def format_date(date_string)
#   date_string.sub(/\A(\d\d\d\d)[-|\/](\d\d)[-|\/](\d\d)\z/, '\3.\2.\1')
# end

def format_date(original_date)
  date_regex = /\A(\d\d\d\d)([\-|\/])(\d\d)\2(\d\d)\z/
  original_date.sub(date_regex, '\4.\3.\1')
end

p format_date('2016-06-17') 
p format_date('2017/05/03')
p format_date('2015/01-31')
