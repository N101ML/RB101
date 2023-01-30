def uiud()
  alpha_hsh = {10 => 'a', 11 =>  'b', 12 => 'c', 13 => 'd', 14 => 'e', 15 => 'f', 16 => 'g', 17 => 'h', 18 => 'i', 19 => 'j', 20 => 'k', 21 => 'l', 22 => 'm', 23 => 'n', 24 => 'o', 25 => 'p', 26 => 'q', 27 => 'r', 28 => 's', 29 => 't', 30 => 'u', 31 => 'v', 32 => 'w', 33 => 'x', 34 => 'y', 35 => 'z'}
  final_uiud = []
  uiud_amount = [8, 4, 4, 4, 12]
  
  uiud_amount.each do |amount|
    amount.times do |num|
      num = rand(35)
      if num <= 9
        final_uiud << num.to_s
      else
        final_uiud << alpha_hsh[num]
      end
    end

    final_uiud << '-'
  end
  
  final_uiud.join.chop
end

p uiud()


### Input: 
- Two strings

### Output: 
- An integer representing how many letters must be removed for the 2 inputted strings to be anagrams

### Requirements/Rules: 
- Inputted strings can both (or only one) by empty
- Strings can be of varying lengths
- Anagram should require the same amount of characters in each string

### Model:
- Check for anagram initially
  - Can letters be re-arranged in 2nd string to form the 1st string
- Begin removing letters from inputed string until an anagram is possible (or ultimately isn't)
- Checking for anagram should include if both inputted strings are the same size
  - Whichever string has more characters must have characters removed to equal other string before checking for anagram

### Examples / Test Cases: 

### Data Structure
- 2 arrays for both inputted strings

### Algorithm
- Place both strings into separate arrays
- Find length of inputted strings and proceed to `anagram check` if both are equal
- If strings have an unequal length, remove characters from longer string until equal to other string length
  - Removing characters requires removing only characters that are NOT found in other string
  - Need to account for duplicates.
- `Check_for_anagram`
  - Iterate through characters in `array1`
    - If character is found in `array2`, update `count` integer (.any?)
    - Once iterated through `array1`, if count == `array1`.size it is an anagram
- `Remove_characters'

- string1.chars, string2.chars
- if string1.size == string2.size
    anagram_check(string1.size, string2.size)


````
# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0 
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2 
# p anagram_difference('a', 'aab') == 2 
# p anagram_difference('codewars', 'hackerrank') == 10 
# p anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") == 42
# p anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") == 50
````
