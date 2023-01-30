=begin
# input: a string
# output: a string 
# rules:
  # return string is the same sequence as input string with every 2nd characater in every third word coverted to uppercase
  # every third word needs the special cases
    # when every third word is found, capitalize every other letter
# examples:
  # p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
    p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
    p to_weird_case('aaA bB c') == 'aaA bB c'
    p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
# data structure:
  # array
# algorithm:
  # initalize a new_string to return
  # initialize a word_count variable and set it to 1
  # iterate through input string as an array
    # on each iteration, check to see if word_count is divisible by 3 with no remainder (modulo)
      # if this is true, iterate through that word (chars)
        # on this iteration, use a counter set to 0 and capitalize all that are odd and place into new_string
      # if this is not true, add one to word_count and add current element to new_string
  # return new_string
    
=end

require 'pry'

def to_weird_case(input_string)
  new_string = []
  word_count = 1

  input_string.split.map do |word|
    if word_count % 3 == 0
      new_word = convert_word(word)
      new_string << new_word.join
      word_count += 1
    else
      word_count += 1
      new_string << word
    end
  end
  new_string.join(" ")
end

def convert_word(word)
  count = 0
  word.chars.map do |letter|
    count.odd? ? letter.upcase! : letter
    count += 1
    letter
  end
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
