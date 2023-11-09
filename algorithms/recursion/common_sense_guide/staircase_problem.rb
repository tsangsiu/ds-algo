=begin

[P]
- A person can climb 1, 2, or 3 steps at a time
- Suppose there is a staircase of n steps. How many different paths are there?

=end

def number_of_path(n)
  return 0 if n <= 0
  return 1 if n == 1
  return 2 if n == 2
  return 4 if n == 3
  number_of_path(n - 1) + number_of_path(n - 2) + number_of_path(n - 3)
end

puts number_of_path(4)
