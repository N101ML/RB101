# input: a string (representing a URL)
# output: a string (representing the domain name)
# rules:
  # input is legit URL
  # input does not have to end in .com
  # input does not have to feature http://
# examples:
  # domain_name("http://github.com/carbonfive/raygun") => github
  # domain_name("www.xakep.ru") => xakep
# data structure:
  # iterate through string as array
# algorithm:
  # convert input string to array
  # initalize new result_array
  # identify if input string starts with http or www
    # if http:
      # iterate through input array
        # once there are two instances of /
          # store all values into result array until there is a .
    # if www:
      # iterate through input array
        # once there is 1 instance of .
          # store all values into result array until there is a .
  # return result array

# def domain_name(url)
#   result_string = ""

#   if url.start_with?("h")
#     result_array = http_url(url) 
#   elsif url.start_with?("w")
#     result_array = www_url(url)
#   end
  
# end

# def http_url(url)
#   method_array = ""
#   start = 0
#   finish = 0

#   url.chars.each_with_index do |letter, idx|
#     if letter == "/" && url[idx + 1] == "/"
#       start = idx + 2
#     elsif letter == "."
#       finish = idx - 1
#       break
#     end
#   end
#   method_array << url.chars[start..finish].join
# end

# def www_url(url)
#   method_array = ""
#   start = 0
#   finish = 0

#   url.chars.each_with_index do |letter, idx|
#     if letter == "w" && url[idx + 1] == "w" && url[idx + 2] == "w"
#       start = idx + 4
#     elsif letter == "."
#       finish = idx - 1
#     end
#   end
#   method_array << url.chars[start..finish].join
# end
