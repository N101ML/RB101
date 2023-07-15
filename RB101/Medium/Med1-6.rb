require 'pry'

def minilang(instruct_string)
  register = 0
  stack = []
  instruct_string = instruct_string.split

  instruct_string.each do |step|
    case step
    when 'PRINT'
      printer(step, register)
    when "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
      register = n_number(step, register)
    when "-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9"
      register = n_number(step, register)
    when 'PUSH'
      push(step, register, stack)
    when 'MULT'
      register = mult(step, register, stack)
    when 'ADD'
      register = add(step, register, stack)
    when 'POP'
      register = pop(step, register, stack)
    when 'DIV'
      register = div(step, register, stack)
    when 'MOD'
      register = mod(step, register, stack)
    when 'SUB'
      register = subs(step, register, stack)
    end
  end

end

def n_number(current_number, register)
  register = current_number.to_i
end

def push(current_number, register, stack)
  stack << register
end

def printer(current_number, register)
  puts register
end

def mult(current_number, register, stack)
  register = stack.pop * register
end

def add(current_number, register, stack)
  register += stack.pop
end

def pop(current_number, register, stack)
  register = stack.pop
end

def div(current_number, register, stack)
  register = register / stack.pop
end

def mod(current_number, register, stack)
  register = register % stack.pop
end

def subs(current_number, register, stack)
  register = register - stack.pop
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

=begin
### Input:
- A string of instructions

### Output:
- Different integers base don the inputted instructions

### Requirements/Rules:
- Stack is stored as an array
- Register is a single value (integer)
- All instructions are in capital letters and conform to methods set forth

### Model:
- Step by step perform tasks set forth from instructions to store and print appropriate values

### Examples / Test Cases: 
```
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
```

### Data Structure
- Stack will be stored as an array
- Register will be stored as an int

### Algorithm
- Initalize `register` to 0
- Convert inputted string to `input_array`
- Iterate through each element of the array and call methods based on input
