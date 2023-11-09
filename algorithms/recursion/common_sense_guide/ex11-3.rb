def triangular_number(n)
  return 1 if n == 1
  n + triangular_number(n - 1)
end

p triangular_number(7)
