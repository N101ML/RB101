# input: a string (to capitalize each first letter) and a possible exception list of strings (words to not capitalize)
# output: a string (with the necessary modifications)
# rules:
  # may or may not have a 2nd string argument of exception words
    # exception words should have their cases ignored
    # this list of exception words will be a string with each word separated by a space
# examples:
  # title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
  # title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
  # title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
# data structure:
  # iterate through the input string as an array
# algorithm:
  # make sure to include optional argument in method definition
  # iterate through input string as an array
    # if a word on iteration is equal to any word in the avoided words, ignore
    # for every word that isn't, upcase the first letter
#

require 'pry'

def title_case(title, minor_words = "")
  new_string = []

  title.split.each do |word|
    if minor_words.downcase.include?(word.downcase)
      new_string << word.downcase
    else
      new_string << word.capitalize
    end
  end
  new_string[0].capitalize!
  new_string.join(" ")
end

p title_case('a clash of KINGS', 'a an the of')
p title_case('THE WIND IN THE WILLOWS', 'The In')
