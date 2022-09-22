def repeater(string)
  new_string = []
  string.chars.each do |letter|
    new_string << letter << letter
  end
  new_string.join
end

p  repeater('Hello') == "HHeelllloo"
p  repeater("Good job!") == "GGoooodd  jjoobb!!"
p  repeater('') == ''
