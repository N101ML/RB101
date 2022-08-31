def fix(value)
  value[1] = 'x'
  value
end

s = 'abc'
t = fix(s)
