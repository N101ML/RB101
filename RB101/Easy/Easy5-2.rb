require 'pry'

def time_of_day(number_in_minutes)
  hours = 0
  final_time = ""
  minutes_in_day = 1440

  #Find Hours
  if number_in_minutes < 0
    loop do
      number_in_minutes += minutes_in_day
      break if number_in_minutes >= 0
    end
  end

  # hours, minutes = number_in_minutes.divmod(60)

  # #Determine if hours > 24

  # if hours > 24
  #   loop do
  #     hours -= 24
  #     break if hours < 24
  #   end
  # end
  
  final_time = "#{sprintf("%.2d", hours)}:#{sprintf("%.2d", minutes)}"

end

# Solution below from assignment:

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# Solution from Further Exploration that can include Time and Date classes FROM ANOTHER STUDENTS EXAMPLE:

def time_of_day(number)
  time = Time.new(2022)
  time += (number * 60)
  time.strftime("%H:%M")
end

p  time_of_day(0) == "00:00"
p  time_of_day(-3) == "23:57"
p  time_of_day(35) == "00:35"
p  time_of_day(-1437) == "00:03"
p  time_of_day(3000) == "02:00"
p  time_of_day(800) == "13:20"
p  time_of_day(-4231) == "01:29"


# ### Input: 
# - An integer that can be signed positive or negative
# ### Output: 
# - A string containing the correct time

# ### Requirements/Rules: 
# - Time must be outputted in hh:mm format
# - Work with any integer input
# - Cannot use `DATE` or `TIME` classes

# ### Model:
# Taking an integer the method must translate the integer to minutes and calculate how far before or after midnight it is.
# The sign of the integer will determine weather the output is before or after 'midnight'

# ### Examples / Test Cases: 
# ````
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
# ````

# ### Data Structure

# Integer for total minutes can be converted into hours and minutes into 2 new integers.

# ### Algorithm

# - Create new integers for `hours` and `minutes`.
# - Iterate through `number_in_minutes` by dividing by 60 as many times as possible before < 60
#   - Break when `number_in_minutes` is < 60
#   - Store the remainder of iteration in `minutes`
# - If `hours` > 24, subtract 24 until it is
# - `Puts` `hours`:`minutes`
