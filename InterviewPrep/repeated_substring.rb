require 'pry'

def repeated_substring_pattern(string)
  substring_length = 1
  answer = nil

  loop do
    array = create_substring(string, substring_length)
    result = check_substring(array)
    if result == true
      answer = true
      break
    elsif substring_length >= string.length
      answer = false
      break
    end

    substring_length += 1
  end
  answer
end

def create_substring(string, pattern)
  new_array = []
  array_holder = []
  start = 0
  
  loop do
    array_holder << string[start..(start + pattern)]
    new_array << array_holder
    break if (start + pattern) >= (string.length - 1) && new_array.length > 1
    start = start + (pattern + 1)
    array_holder = []
    end

  new_array
end

def check_substring(array)
  reference = array[0]
  result = array.all? do |sub|
    sub == reference
  end
  result
end

p  repeated_substring_pattern('abab') == true
p  repeated_substring_pattern('aba') == false
p  repeated_substring_pattern('aabaaba') == false
p  repeated_substring_pattern('abaababaab') == true
p  repeated_substring_pattern('abcabcabcabc') == true
