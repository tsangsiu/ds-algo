# O(n^2)
def greatest_number(arr)
  arr.each do |ele1|
    return ele1 if arr.all? { |ele2| ele1 >= ele2 }
  end
end

# O(n*logn)
def greatest_number(arr)
  arr.sort[-1]
end

# O(n)
def greatest_number(arr)
  greatest = arr.first
  arr.each do |ele|
    greatest = ele if ele > greatest
  end
  greatest
end

arr = [0, 5, 2, 1, 6, 3]
puts greatest_number(arr)
