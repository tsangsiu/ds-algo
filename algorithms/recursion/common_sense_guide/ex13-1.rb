def greatest_product(arr)
  arr.sort[-3..-1].reduce(:*)
end

puts greatest_product([5, 7, 9, 1, 3, 0, 4, 8, 6, 2])
