require 'pry'

def letter_percentages(string)
  letter_hsh = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  total = string.size.to_f

  letter_hsh[:lowercase] = string.count('/[a-z]/')
  letter_hsh[:uppercase] = string.count('/[A-Z]/')
  letter_hsh[:neither] = string.size - letter_hsh[:lowercase] - letter_hsh[:uppercase]

  letter_hsh.each do |key, value|
    letter_hsh[key] = (value / total) * 100
  end

  letter_hsh

end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

=begin
# PEDAC:

### Input:
- A string comprising of letters, numbers and other symbols

### Output:
- A hash comprised of percentages for lowercase, uppercase, and neither contained in the aragument string

### Requirements/Rules:
- You may assume that the string will always contain at least one character
- Percentages should add up to 100
- Letters will be both upper and lower case
  - All non-letters should be grouped under the 'neither category'

### Model:
- Iterate through inputted string and update frequency in hash

### Examples / Test Cases:
```
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
```

### Data Structure
- A hash for storing percentages of frequency

### Algorithm
- Initalize `letter_hsh`
- Iterate through `string` as an array and update the appropriate hash key in `letter_hsh`
- Iterate through `letter_hsh` and divide each value by the total
