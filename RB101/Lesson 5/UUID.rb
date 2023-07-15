def uuid()
  alpha_hsh = {10 => 'a', 11 =>  'b', 12 => 'c', 13 => 'd', 14 => 'e', 15 => 'f', 16 => 'g', 17 => 'h', 18 => 'i', 19 => 'j', 20 => 'k', 21 => 'l', 22 => 'm', 23 => 'n', 24 => 'o', 25 => 'p', 26 => 'q', 27 => 'r', 28 => 's', 29 => 't', 30 => 'u', 31 => 'v', 32 => 'w', 33 => 'x', 34 => 'y', 35 => 'z'}
  final_uuid = []
  uuid_amount = [8, 4, 4, 4, 12]
  
  uuid_amount.each do |amount|
    amount.times do |num|
      num = rand(35)
      if num <= 9
        final_uuid << num.to_s
      else
        final_uuid << alpha_hsh[num]
      end
    end

    final_uuid << '-'
  end
  
  final_uuid.join.chop
end

p uuid()
