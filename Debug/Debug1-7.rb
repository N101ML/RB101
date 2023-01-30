require 'pry'

def neutralize(sentence)
  words = sentence.split(' ')
  # words_arr = words.clone # My solution was to clone the array so we can iterate over it cleanly
  words.reject! {|word| negative?(word)}
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
