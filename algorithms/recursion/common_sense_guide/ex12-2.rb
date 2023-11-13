def golomb(n)
  return 1 if n == 1
  1 + golomb(n - golomb(golomb(n - 1)))
end

def golomb(n, memo = {})
  return 1 if n == 1
  return memo[n] unless memo[n].nil?
  memo[n] = 1 + golomb(n - golomb(golomb(n - 1, memo), memo), memo)
end

(1..100).each do |n|
  puts golomb(n)
end
