def sum(low, high)
  return low if low == high
  return high + sum(low, high - 1)
end

puts sum(1, 10)
puts sum(1, 100)
