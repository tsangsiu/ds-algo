def number_of_char(arr)
  return arr.first.length if arr.size == 1
  arr.first.length + number_of_char(arr[1..])
end

puts number_of_char(['ab', 'c', 'def', 'ghij'])