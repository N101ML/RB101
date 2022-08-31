# (1..99).each do |num|
#   if num % 2 == 1
#     puts num
#   end
# end

1.upto(99) do |x| # looking at shared solutions much better to have written puts x if x.odd?
  if x.odd?
    puts x
  end
end
