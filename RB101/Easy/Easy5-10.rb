require 'pry'

# def print_in_box(string)
#   top_half(string)
#   middle(string)
#   bottom(string)
# end

# def top_half(string)
#   print "+-"
#   string.length.times { |x| print "-" }
#   puts "-+"
#   print "| "
#   string.length.times { |x| print " " }
#   puts " |"
# end

# def middle(string)
#   print "|"
#   print " #{string} "
#   puts "|"
# end

# def bottom(string)
#   print "| "
#   string.length.times { |x| print " " }
#   puts " |"
#   print "+-"
#   string.length.times { |x| print "-" }
#   puts "-+"
# end

# Solution below comes from assignment:

LENGTH_MAX = 76

def print_in_box(message)
  new_string = ''

  # The code below will truncate long messages:
  # message.chars.each do |char|
  #   break if new_string.size >= LENGTH_MAX
  #   # binding.pry
  #   new_string << char
  # end   

  

  horizontal_rule = "+#{'-' * (new_string.size + 2)}+"
  empty_line = "|#{' ' * (new_string.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{new_string} |"
  puts empty_line
  puts horizontal_rule
end


print_in_box("Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.")

# PEDAC:

# ### Input: 
# - A string of varied length

# ### Output: 
# - A visual box with a specific pattern featuring the inputted string in the center

# ### Requirements/Rules: 
# - There are visual requirments for what the box must look like:
#   - Each corner has a plus sign
#   - The x-axis border is made of `-` and contains as many as needed to fit the string in the box.
#     - Provided with no string there should only be 2 on the top and 2 on the bottom
#   - The y-axis border is made of `|`
#     - No matter the length of the string, there should only be 3 of these on each side of the y-axis

# ### Model:
# - Create a template for which to place the string and create the box visually

# ### Examples / Test Cases: 
# ````
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# ````
# ### Data Structure
# - A front and back method that is made of `puts` statements


# ### Algorithm
