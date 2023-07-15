def joinor(brd, punct=", ", combiner="or ")
  empty_squares(brd).join("#{punct}").insert(-2, "#{combiner}")
end

joinor([1, 2])
