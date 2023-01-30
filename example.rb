def score_to_par(scores_array, total_par)
  total_score = 0
  scores_array.each do |num|
    total_score += num
  end
  total_score - total_par
end

scores = [65, 67, 68, 68]
total_par = 288

score_to_par(scores, total_par)
