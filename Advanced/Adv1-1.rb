require 'pry'

ADJECTIVES = %w(quick lazy sleepy ugly smelly).freeze
NOUNS = %w(fox dog head leg arm can chair ball).freeze
VERBS = %w(jumps lifts bites licks).freeze
ADVERBS = %w(easily lazily noisily excitedly).freeze

text_data = File.read("/Users/Mike/Launch School/RB101/Advanced/Adv1-1.txt")

text_data.split.each do |word|
  case
  when word == "%{adjective}"
    text_data.sub!(word, ADJECTIVES.sample)
  when word == "%{noun}"
    text_data.sub!(word, NOUNS.sample)
  when word == "%{verb}"
    text_data.sub!(word, VERBS.sample)
  when word == "%{adverb}"
    text_data.sub!(word, ADVERBS.sample)
  end
end

p text_data

## For some reason the last noun will not subsitute and I cannot figure out why.

# Solution from exercise:

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end
