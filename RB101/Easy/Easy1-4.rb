vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'TRUCK'
]

# The array above is different from the exercise to account for testing case sensitivity


# The solution below was my attempt

# def count_occurrences(vehicle_array)
#   vehicle_hash = {}
#   uniq_array = []

#   uniq_array = vehicle_array.uniq
#   vehicle_hash = uniq_array.to_h { |vehicle| [vehicle, 0] }

#   vehicle_hash.each do |key, value|
#     current_freq = vehicle_array.count(key)
#     vehicle_hash[key] = current_freq
#   end

#   vehicle_hash.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

## Solution below influenced by solution in assignment (which includes the added functionality of allowing case sensitivity to not matter)

def count_occurrences(array)
  vehicle_hash = {}

  array.uniq.each do |vehicle|
    vehicle.downcase!
    vehicle_hash[vehicle] = array.count(vehicle)
  end

  vehicle_hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)

# ## Problem
# - Input: An array of strings
# - Output: Printed element and the number of occurances in the input array (integer)
# - Case-sensitive elements in array
# - Elements in the array are counted (integer)

# ## Examples / Test Cases

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# ## Data Structures

# - A hash containing element frequency

# ## Algorithm

# - Create an empty hash
# - Iterate through array adding unique strings to hash as keys
# - Assign frequency value of 0 to each key
# - Iterate through array again, adding 1 to each string: value pair that is found
# - Print hash
