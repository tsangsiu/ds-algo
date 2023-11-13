# using memoization

def fib(n, memo = {})
  return n if n == 0 || n == 1
  return memo[n] unless memo[n].nil?
  memo[n] = fib(n - 1, memo) + fib(n - 2, memo)
end

puts fib(10)

# going bottom-up

def fib(n)
  return n if n == 0 || n == 1
  
  # 0, 1, 1, 2
  # a, b, c,
  #    a, b, c

  a = 0
  b = 1
  c = nil
  
  (n - 1).times do
    c = a + b
    a = b
    b = c
  end
  
  c
end

puts fib(10)
