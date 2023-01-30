=begin
# input: a string
# output: a hash with arrays for values
# rules:
  # hash value should be an array
  # values should be sorted alpha
  # ignore spaces, special chars and case sensitivity
# examples:
  # get_char_count("Mississippi") => {4=>["i", "s"], 2=>["p"], 1=>["m"]}
    get_char_count("Hello. Hello? HELLO!!") => {6=>["l"], 3=>["e", "h", "o"]}
    get_char_count("aaa...bb...c!") => {3=>["a"], 2=>["b"], 1=>["c"]}
    get_char_count("aaabbbccc") => {3=>["a", "b", "c"]}
    get_char_count("abc123") => {1=>["1", "2", "3", "a", "b", "c"]}
# data structure:
  # array and hash
# algorithm:
  # initialize a new hash 
  # initalize a new array
  # initalize an alpha range to check chars
  # iterate through input string as an array with all values downcased
    # check if key exists, if it does, add the char to the existing key
    # find count value of current char, place into hash
  # sort values of hash by alpha
=end


def get_char_count(string)
  hash = Hash.new
  string_down = string.downcase.gsub(/[^a-z0-9]/, '')

  string_down.chars.each do |char|
    hash[string_down.count(char)] = []
  end

  string_down.chars.each do |char|
    hash[string_down.count(char)] << char
  end

  hash.each do |key, value|
    value = value.uniq!
  end 

  hash.map {|count, array| [count, array.sort]}.to_h
end


get_char_count("Mississippi")
get_char_count("Hello. Hello? HELLO!!")
# get_char_count("aaa...bb...c!") 
# get_char_count("aaabbbccc")
# get_char_count("abc123")
