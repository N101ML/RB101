# 10.times {|x| puts 'The Flintstones Rock!'.rjust(21 + x, " ")}

10.times {|x| puts (" " * x) + "The Flintstones Rock!"}
