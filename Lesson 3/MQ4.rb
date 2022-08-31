def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

rolling_buffer1(buffer, 3, "I")
rolling_buffer1(buffer, 3, "Love")
rolling_buffer1(buffer, 3, "You")
rolling_buffer1(buffer, 3, "Too")
