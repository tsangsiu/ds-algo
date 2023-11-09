def number_of_shortest_paths(n_row, n_col)
  return 1 if n_row == 1 || n_col == 1
  return number_of_shortest_paths(n_row - 1, n_col) +
          number_of_shortest_paths(n_row, n_col - 1)
end

puts number_of_shortest_paths(7, 3)
