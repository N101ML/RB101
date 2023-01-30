DEGREE = "\xC2\xB0"


def dms(input_float)
  degrees = input_float.truncate

  minutes_calc = input_float - degrees
  minutes_calc = conversion(minutes_calc)
  minutes = minutes_calc.truncate

  seconds_calc = minutes_calc - minutes
  seconds_calc = conversion(seconds_calc)
  seconds = seconds_calc.truncate

  # Originally had format below, changed to what was provided in solution:
  # "#{degrees}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}\""

  if degrees > 360
    loop do
      degrees -= 360
      break if degrees < 360
    end
  elsif degrees < 360
    loop do
      degrees += 360
      break if degrees > 0
    end
  end

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)

end

def conversion(calc_num)
  calc_num *= 100
  calc_num *= 0.60
end

# Solution below comes from assignment:

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end


# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p  dms(400) == %(40°00'00")
p  dms(-40) == %(320°00'00")
p  dms(-420) == %(300°00'00")

# PEDAC:

# ### Input:
# - A float representing an angle between 0 and 360 degrees 

# ### Output: 
# - A string that represents that angle in degrees, minutes and seconds

# ### Requirements/Rules: 
# - Use a degree symbol for degrees, a single quote for minutes, and a double quote for seconds
# - A degree has 60 minutes
# - A minute has 60 seconds

# ### Model:
# - Covert the inputted float into degrees, minutes, then seconds and format those coversions as expected

# ### Examples / Test Cases: 
# ````
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# ````

# ### Data Structure
# - Integers

# ### Algorithm
# - Truncate `input_float` and assign to `degrees`
#   - If remainder is > 0, begin with minutes and seconds. If not, answer is complete
# - Subtract `degrees` from `input_float` as `minutes_calc` and `round(2)`
# - Multiply `minutes_calc` by 100
# - Multiply `minutes_calc` by 0.60
# - `minutes` = `minutes_calc.truncate`
#   -Repeat with `seconds_calc`
