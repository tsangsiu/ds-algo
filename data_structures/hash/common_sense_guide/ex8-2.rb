def duplicate_value(arr)
  hash = {}
  arr.each do |ele|
    return ele if hash[ele]
    hash[ele] = true
  end
end

p duplicate_value(['a', 'b', 'c', 'd', 'c', 'e', 'f'])
