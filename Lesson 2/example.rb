arr = [1, 1, 1, 1, 2, 2, 2, 2].select do |num|
  num = 2
end

p arr

variable shadowing inside a block
a = 'Bob'
b = 'Kate'

5.times do |a|
  a = 'Bill'
  b = 'Sarah'
end

p a
p b

call t.times vs pass puts(" ")
