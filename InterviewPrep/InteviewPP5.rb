=begin
# input: a string
# output: a string (with a single character)
# rules:
  # return a string with the character that occurs the least
  # if there are ties, return the string that appears first
  # case insensitive
  # 
# examples:
  # p least_common_char("Hello World") #== "h"
    p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
    p least_common_char("Mississippi") #== "m"
    p least_common_char("Happy birthday!") #== ' '
    p least_common_char("aaaaaAAAA") #== 'a'
# data structure:
  # hash?
# algorithm:
  # initialize a new hash
  # iterate through the input string (downcased) as an array with unique values
    # store the letter as a key and the count from the input string as the value
  # 
=end

def least_common_char(string)
  hash = Hash.new(0)
  result_string = ""
  new_string = string.downcase.chars.uniq

  new_string.each do |char|
    hash[char] = string.downcase.count(char)
  end

  sorted_array =  hash.sort_by { |_, value| value }
  min_value = sorted_array[0][1]

  hash.each do |key, value|
    if value == min_value
      result_string << key
      break
    end
  end

  result_string
    
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
