require 'pry'
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440

def after_midnight(time_string)
  hours_arr = []
  minutes_arr = []
  total_minutes = 0

  # Hours
  hours_arr << time_string[0] + time_string[1]
  hours_arr.map! { |char| char.to_i * MINUTES_IN_HOUR }

  # Minutes
  minutes_arr << time_string[3] + time_string[4]
  minutes_arr.map! { |char| char.to_i }

  total_minutes = hours_arr[0] + minutes_arr[0]
  total_minutes == MINUTES_IN_DAY ? 0 : total_minutes
end

def before_midnight(time_string)
  total_minutes_before = after_midnight(time_string)
  total_minutes_before > 0 ? (MINUTES_IN_DAY - total_minutes_before) : 0  
end

p  after_midnight('00:00') == 0
p  before_midnight('00:00') == 0
p  after_midnight('12:34') == 754
p  before_midnight('12:34') == 686
p  after_midnight('24:00') == 0
p  before_midnight('24:00') == 0

def after_midnight_time_class
  time = Time.new(2022)

end

#PEDAC:

# ### Input: 
# - string representing time in a 24 hour format

# ### Output: 
# - an integer representing the number of minutes the inputted string is before or after minute (depending on the method called)

# ### Requirements/Rules: 
# - Cannot use DATE or TIME class
# - If the argument is positive the output represents after midnight, if the argument is negative the outpuit represents before midnight
# - Both methods should return a value in the range of `0..1439`

# ### Model:
# - Need to convert the argument string into an integer for both hours and minutes and then add them together.

# ### Examples / Test Cases: 
# ````
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
# ````
# ### Data Structure
# - An array to store the string values which can then be converted to integers

# ### Algorithm
# - Initialize an empty array `hours_arr`
# - Initialize an empty array `minutes_arr`
# - Initialize an integer `total_minutes`
# - Place the first 2 characters (representing the hour) into `hours_arr`
# - Iterate through `hours_array`to convert the string to integer
# - Convert the value in `hours_array` to minutes and add to `total_minutes`
# - Repeat this process for minutes
