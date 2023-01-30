def word_to_digit(message)
  phone_number = []
  phone_string = ""
  message_no_punct = message.gsub(/[^a-z0-9\s]/i, '') # Googled how to remove punctuation from a string
  message_no_punct.split(" ").each do |word|
    case word
    when 'one'
      phone_number << 1
      message.gsub!(word, "1")
    when 'two'
      phone_number << 2
      message.gsub!(word, "2")
    when 'three'
      phone_number << 3
      message.gsub!(word, "3")
    when 'four'
      phone_number << 4
      message.gsub!(word, "4")
    when 'five'
      phone_number << 5
      message.gsub!(word, "5")
    else
      word
    end
  end

  p message

end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
