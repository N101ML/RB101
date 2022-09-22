def greetings(name_arr, occupation_hash)
  name = name_arr.join(" ")
  puts "=> Hello, #{name}! Nice to have a #{occupation_hash[:title]} #{occupation_hash[:occupation]} around."
end

# Solution from exercise: (w/ modifications to conform to Rubocop found in examples)

def greetings(name, status)
  "Hello, #{name.join(' ')}! "\
  "Nice to have a #{status[:title]} #{status[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
