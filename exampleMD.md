**Question:**

Examine the code below. The intention of the `square` method provided is to square each value of an array that `square` is called on. Currently, the method does not achieve this result. What does this method return and why? How can you alter this method to correctly return an array with each element squared? In addition, how can you alter the code so this value can be used again outside the method?

```ruby
def square(array)
  array.map do |num|
    num * num
  end
  array
end

array = [1, 2, 3, 4, 5]
square(array)
```
**Grading Rubric:**
* Student identifies what the original method returns and why (2 points)
* Student correctly alters method to return an array with the correct values (1 point)
* Student correctly alters code snippet so return value of method can be used elsewhere (1 point)

**Answer:**

Currently the `square` method returns the array object `array` that is passed as an argument on the method invocation of `square` on `line 10`. This is because Ruby methods always return the evaluated result of the last line of the expression, which is the local variable `array` on `line 5` in this example.  By removing the local variable `array` from `line 10`, the `square` method will now return the return value of calling `map` on local variable `array` with the given block. By initializing a new local variable and assigning it to the return value of calling `square` and passing in `array` as an argument on `line 10`, you can use the return value of this method invocation elsewhere in your code. 
