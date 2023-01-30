# input: a string of text
# output: an array
# rules:
  # input is a string of text with possible punctuation and line-breaks
  # if input has < 3 unique words, return either the top 2 or top 1
  # return an empty array if there are no words
# examples:
#   # top_3_words("In a village of La Mancha, the name of which I have no desire to call to
# mind, there lived not long since one of those gentlemen that keep a lance
# in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.")
# # => ["a", "of", "on"]
  # top_3_words("a a a  b  c c  d d d d  e e e e e"), ["e", "d", "a"]

# data structure:
  # hash to store count values of instances for each word
# algorithm:
  # initalize a hash with values that equal 0
  # convert string into aray
    # iterate through array
    # check to see if key exists in hash
      # if not, assign key with a value of 1
      # repeat this process throughout the iteration
  # sort the hash keys by size
  # if there are > 3 values in the hash, return the top 3 in an array
    # if not, return the values in the hash as an array

    require 'pry'

    def top_3_words(text)
      hash = Hash.new(0)
      result_array = []
      text.downcase.split(/[^'\w]+/).each do |el|
        if hash.include?(el)
          hash[el] += 1
        else
          hash[el] = 1
        end
      end
      sorted_hash = hash.sort_by do |_, value|
                      value
                    end
    
    
      sorted_hash.reverse.each do |key, value|
        result_array << key unless key == "" || key == "'"
        break if result_array.size >= 3
      end
    
      result_array
    end
    
    # top_3_words("In a village of La Mancha, the name of which I have no desire to call to
    # mind, there lived not long since one of those gentlemen that keep a lance
    # in the lance-rack, an old buckler, a lean hack, and a greyhound for
    # coursing. An olla of rather more beef than mutton, a salad on most
    # nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
    # on Sundays, made away with three-quarters of his income.")
    
    # top_3_words("a a a  b  c c  d d d d  e e e e e")
    
    # p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
    
    # p top_3_words("  //wont won't won't ")
    
    # p top_3_words("  , e   .. ")
    
    # p top_3_words("  '  ")
    
    p top_3_words("  '''  ")
    