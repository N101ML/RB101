require 'pry'

def scramble(str1, str2)
  str1_hsh = {}
  str1.chars.each do |char|
    str1_hsh[char] = 0
  end

  str1.chars.each do |char|
    if str1_hsh.include?(char)
      str1_hsh[char] += 1
    end
  end

  str2.chars.all? do |char|
    if str1_hsh[char] == nil
      return false
    else
      str1_hsh[char] >= str2.chars.count(char)
    end
  end
end

# initialize str1 into a hash with values of 0
# iterate through str1 and add values for each char occurence
# iterate through str2 and if each char is > 0, return true, else false

p  scramble("javaass", "jjss") == false
p  scramble("rkqodlw", "world") == true
p  scramble("cedewaraaossoqqyt", "codewars") == true
p  scramble("katas", "steak") == false
p  scramble("scriptjava", "javascript") == true
p  scramble("scriptingjava", "javascript") == true
