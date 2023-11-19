def find_missing_number(arr)
  arr = arr.sort
  int = 0
  arr.each do |ele|
    return int if ele != int
    int += 1
  end
  nil
end

puts find_missing_number([5, 2, 4, 1, 0])
puts find_missing_number([9, 3, 2, 5, 6, 7, 1, 0, 4])
