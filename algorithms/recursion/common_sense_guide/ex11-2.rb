def select_even_numbers(arr)
  return [] if arr.empty?

  even_numbers = []
  even_numbers += [arr.first] if arr.first.even?
  even_numbers += select_even_numbers(arr[1..])

  even_numbers
end

p select_even_numbers([0])
p select_even_numbers([1])
p select_even_numbers((1..10).to_a)
