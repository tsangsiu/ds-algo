def first_non_duplicated_char(str)
  hash = Hash.new(0)
  str.each_char { |letter| hash[letter] += 1 }
  hash.each_pair { |key, value| return key if value == 1 }
end

p first_non_duplicated_char('minimum') == 'n'
