def number_of_shortest_paths(n_row, n_col)
  return 1 if n_row == 1 || n_col == 1
  return number_of_shortest_paths(n_row - 1, n_col) +
          number_of_shortest_paths(n_row, n_col - 1)
end

def number_of_shortest_paths(n_row, n_col, memo = {})
  return 1 if n_row == 1 || n_col == 1
  return memo[[n_row, n_col]] unless memo[[n_row, n_col]].nil?
  memo[[n_row, n_col]] = number_of_shortest_paths(n_row - 1, n_col, memo) +
                          number_of_shortest_paths(n_row, n_col - 1, memo)
end

puts number_of_shortest_paths(7, 3)
