def twice(number)
  if double?(number)
    number
  else
    number * 2
  end
end

def double?(num)
  h1 = 0
  h2 = 0
  mid = num.to_s.size / 2
  string_num = num.to_s

  if string_num.size.even?
    h1 = string_num[0, mid]
    h2 = string_num[mid, string_num.size]
    true if h1 == h2
  else
    false
  end
end

p  twice(37) == 74
p  twice(44) == 44
p  twice(334433) == 668866
p  twice(444) == 888
p  twice(107) == 214
p  twice(103103) == 103103
p  twice(3333) == 3333
p  twice(7676) == 7676
p  twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p  twice(5) == 10
