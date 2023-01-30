require 'pry'

def lights(number_of_switches)
  light_hsh = {}
  result_hsh = {}
  result_arr_on = []
  result_arr_off = []

  number_of_switches.times { |num| light_hsh[num + 1] = 0}

  number_of_switches.times do |round|
     light_hsh.map do |key, value|
      if key % (round + 1) == 0
        flip_switch(result_hsh, key)
        end
      end
    end
  
  result_hsh.each do |key, value|
    if value == 1
      result_arr_on << key
    else
      result_arr_off << key
    end
  end

  result_arr_on
end

def flip_switch(result_hsh, key)
  if result_hsh[key] == 0 || result_hsh[key] == nil
    result_hsh[key] = 1
  else
    result_hsh[key] = 0
  end
end



lights(5)

# Solution from exercise:

# # initialize the lights hash
# def initialize_lights(number_of_lights)
#   lights = Hash.new
#   1.upto(number_of_lights) { |number| lights[number] = "off" }
#   lights
# end

# # return list of light numbers that are on
# def on_lights(lights)
#   lights.select { |_position, state| state == "on" }.keys
# end

# # toggle every nth light in lights hash
# def toggle_every_nth_light(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end
# end

# # Run entire program for number of lights
# def toggle_lights(number_of_lights)
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light(lights, iteration_number)
#   end

#   on_lights(lights)
# end
