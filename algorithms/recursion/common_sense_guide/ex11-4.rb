def index_of_x(str, index = 0)
  return index if str[0] == 'x'
  index_first_x(str[1..], index + 1)
end

def index_of_x(str)
  return 0 if str[0] == 'x'
  return index_of_x(str[1..]) + 1
end

puts index_of_x('x')
puts index_of_x('abcdefghijklmnopqrstuvwxyz')
