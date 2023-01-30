**Question:**

Examine the code below. We have a method `score_to_par` that accepts two parameters to determine how far above or below par a golfer's total score is. Re-write the method using the `#reduce` method and only use a single line of code. Explain what is happening in your new method.

```ruby
def  score_to_par(scores_array, total_par)
  total_score = 0
  scores_array.each do |num|
    total_score += num
  end
  total_score - total_par
end

scores = [65, 67, 68, 68]
total_par = 288

score_to_par(scores, total_par)
```

**Grading Rubric:**

* Student successfully re-writes method using a single line and the `#reduce` method (2 points)
* Student explains new method with an explanation for what happens using `#reduce` (2 points)

**Answer:**

```ruby
def  score_to_par(scores_array, total_par)
  scores_array.reduce(:+) - total_par
end
```
In our new method, `score_to_par` is still accepting two parameters: `scores_array` and `total_par`. Instead of iterating through `scores_array` using `each`, the method now utilizes `#reduce` to sum the values in `scores_array`. `#reduce` is called on `scores_array` using `:+` as an argument. By using a symbol, each element in the collection is passed to the `#+` method and has the effect of adding each element together. `#-` is then called on the return value from `reduce` and is passed in the local variable `total_par` as an argument. This return value (`-20`) is what is returned from the method.
