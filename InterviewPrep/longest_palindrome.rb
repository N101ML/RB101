def longest_palindrome(string)
  results = []
  counter = 0

  loop do
    (counter..(string.length - 1)).each do |num|
      results << string[counter..num]
    end
    counter += 1
    break if counter >= string.length
  end

  pal_list = palindrome(results)

  largest_pal(pal_list).size
end

def palindrome(array)
  array.select do |arr|
    arr == arr.reverse
  end
end

def largest_pal(array)
  array.max_by {|elem| elem.size }
end

p  longest_palindrome("a") == 1
p  longest_palindrome("aa") == 2
p  longest_palindrome("baa") == 2
p  longest_palindrome("aab") == 2
p  longest_palindrome("baabcd") == 4
p  longest_palindrome("baablkj12345432133d") == 9


require 'pry'

def rot13(string)
  alpha_array = ('a'..'z').to_a
  alpha_array_cap = ('A'..'Z').to_a
  results_array = []

  string.chars.each_with_index do |char, index|
     if alpha_array.include?(char) 
      index = alpha_array.index(char) + 13

      if index > 26
        index = index - 26
      end
      char = alpha_array[index]
      results_array << char
    elsif alpha_array_cap.include?(char)
      index = alpha_array_cap.index(char) + 13

      if index > 26
        index = index - 26
      end
      char = alpha_array_cap[index]
      results_array << char
    else
      results_array << char
      end
    end
  results_array.join
end

# input: string
# output: string with each letter  13 spaces away from original
# rules:
  # ignore non alpha chars
  # english alphabet
# data:
  # use array for alpha range
  # store new string in array
# examples:
  # rot13("test") == "grfg"
# algo:
  # initalize alpha array
  # initialize results array
  # convert input string to array
  # iterate through each char of input array
    # find index of letter based on alpha array
    # add 13 to that index
      # if sum > 26
        # add up to 26, then start remainder from beginning of alpha array
    # store new values in results array

p rot13("Ruby is cool!")
