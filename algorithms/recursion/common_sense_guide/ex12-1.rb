def add_until_100(array)
  return 0 if array.length == 0
  
  sub_problem_sum = add_until_100(array[1, array.length - 1])
  if array[0] + sub_problem_sum > 100
    return sub_problem_sum
  else
    return array[0] + sub_problem_sum
  end
end

puts add_until_100((1..100).to_a)
