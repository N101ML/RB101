def teddys_age(name)
  age = rand(20..200)
  puts "#{name} is #{age} years old today!"
end

puts "Please enter a name: "
name = gets.chomp
teddys_age(name)
