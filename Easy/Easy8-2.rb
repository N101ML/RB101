def madlibs()
  print "Enter a noun: "
  noun = gets.chomp
  print "Enter a verb: "
  verb = gets.chomp
  print "Enter an adjective: "
  adjective = gets.chomp
  print "Enter an adverb: "
  adverb = gets.chomp

  s1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  s2 = "Why do #{noun}'s #{verb} on their #{adjective} legs so #{adverb}?"
  s3 = "A #{noun} #{verb}'s on the #{adjective} grass so #{adverb} this time of year!"

  puts [s1, s2, s3].sample
end

madlibs
