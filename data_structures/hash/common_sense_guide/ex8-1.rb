def intersection(arr1, arr2)
  arr1_hash = {}
  arr1.each { |ele| arr1_hash[ele] = true }

  arr_intersect = []
  arr2.each { |ele| arr_intersect << ele if arr1_hash[ele] }
  
  arr_intersect
end

p intersection([1, 2, 3, 4, 5], [0, 2, 4, 6, 8])
