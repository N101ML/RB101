# def area(length, width)
#   length * width
# end

# puts "Enter the length of the room in meters: "

# meter_length = gets.chomp.to_f

# puts "Enter the width of the room in meters: "

# meter_width = gets.chomp.to_f

# area_in_meters = area(meter_length, meter_width)
# area_in_feet = (area_in_meters * 10.7639).round(2)

# puts "The area of the room is #{area_in_meters} square meters #{area_in_feet} square feet."

## Solution in exercise used CONSTANT for square meters to feet of 10.7639
## Further Explanation:

SQFEET_TO_INCHES = 144
INCHES_TO_CENT = 929.03

def area(length, width)
  length * width
end

puts "Enter the length of the room in feet: "

feet_length = gets.to_f

puts "Enter the width of the room in feet: "

feet_width = gets.to_f

area_in_feet = area(feet_length, feet_width)
area_in_inches = (area_in_feet * SQFEET_TO_INCHES).round(2)
area_in_cent = (area_in_feet * INCHES_TO_CENT).round(2)

puts "The area of the room is #{area_in_feet} square feet (#{area_in_inches} square inches and #{area_in_cent} square centimeters."
