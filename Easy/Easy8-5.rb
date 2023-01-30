def palindromes(string)
  check_arr = substrings(string)
  result = []

  check_arr.each do |string|
    if string.size > 1 && string == string.reverse
      result << string
    end
  end

  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def leading_substrings(string)
  new_arr = []
  0.upto(string.size - 1) do |count|
    new_arr << string.slice(0..count)
  end

  new_arr
end

p  palindromes('abcd') == []
p  palindromes('madam') == ['madam', 'ada']
p  palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
    '-madam-', 'madam', 'ada', 'oo'
  ]
p  palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  ]
