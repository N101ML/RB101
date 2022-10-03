require 'pry'

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  word_hsh = {}
  word_arr = word.upcase.chars

  BLOCKS.each do |letter_block|
    word_hsh[letter_block] = 0
  end

  word_arr.each do |letter|
    word_hsh.each do |word_block, frequency|
      # binding.pry
      if word_block.include?(letter)
        word_hsh[word_block] += 1
      end
    end
  end

  word_hsh.any? {|_, value| value > 1} ? false : true
end

p  block_word?('BATCH') == true
p  block_word?('BUTCH') == false
p  block_word?('jest') == true

=begin
# PEDAC:

### Input:
- A string of a single word

### Output:
- A boolean value of true or false

### Requirements/Rules:
- Provided pairs of letters
- If a pair of letters is used once in the string argument, it cannot be used again

### Model:
- Identify letter blocks and if an inputted word uses them more than once

### Examples / Test Cases:
```
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
```
### Data Structure
- Store letter blocks as a hash
  - Key is the letter block itself
  - Value is the number of instances the letter block was used

### Algorithm
- Initalize `BLOCKS` as an array to store the letter blocks
- Initialize an empty hash
- Iterate through `BLOCKS` to store the blocks in `hsh` with a value of 0
- If any values in the hash return > 1, return false
