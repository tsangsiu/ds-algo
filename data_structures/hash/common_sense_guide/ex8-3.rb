def missing_letter(str)
  letters = ('a'..'z').to_a
  str.each_char { |letter| letters.delete(letter) }
  letters[0]
end

p missing_letter('the quick brown box jumps over a lazy dog') == 'f'
