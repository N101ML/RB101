# input: a string
# output: a string (with the conversion to kebab case)
# rules:
  # string will contain no punctuation or spaces
  # returned string should only contain lowercase letters
# examples:
  # kebabize('myCamelCasedString')
  # kebabize('myCamelHas3Humps')
# data structure:
  # an array 
# algorithm:
  # initialize result string
  # iterate through input string as an array
    # check if char is uppercase
      # if so, upcase that char and add a - to result array
      # if not, add char to result array


      require 'pry'

      def kebabize(string)
      
        result_string = ""
      
        return string if string.chars.all? {|x| x.downcase == x } == true
      
        string.chars.each do |char|
          if char == char.to_i.to_s
            string.delete(char)
          elsif char == char.upcase
            result_string << "-" + char.downcase
          else
            result_string << char
          end
        end
      
        result_string
      end
      
      p kebabize('myCamelHas3Humps')
      p kebabize('myCamelCasedString')
      p kebabize("ph-azy") 
