# def xor?(bool_1, bool_2)
#   if bool_1 == true && bool_2 == false
#     true
#   elsif bool_1 == false && bool_2 == true
#     true
#   else
#     false
#   end  
# end

## Solution from exercise:

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 
