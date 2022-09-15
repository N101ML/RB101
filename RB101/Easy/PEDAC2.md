PEDAC Template
==============
### Process The Problem
- Understanding the Problem
  - Identify expected Input and Output:
  - Make the requirements explicit
  - Identify Rules
  - Mental Model
- Examples/Test Cases
- Data Structure
- Algorithm

### Input: 
- A string containg words of various lengths

### Output: 
- A hash consisting of word length frequencies

### Requirements/Rules: 
- Words from the input are separated by spaces
- Words that have punctuation attached count in the size total

### Model:
- Count the sizes of each word separate by a space and note the frequency of each word count in the inputted string

### Examples / Test Cases: 
````
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
````
### Data Structure
- A hash to store the word sizes and frequencies

### Algorithm
- Initalize `word_hsh`
- Convert input string into a `new_arr`
- Iterate through `new_arr` and store the size of each word into `word_hsh`
- Return `word_hsh`
