=begin

[P]roblem
- To implement the binary search algorithm
- We will assume that:
  - The input array is sorted
  - The elements are only numbers
  - All elements are distinct

[E]xamples
- Input: [2, 5, 6, 8, 10, 11, 12], 10
  Output: 4
- Input: [2, 5, 6, 8, 10, 11, 12], 9
  Output: `nil`

[D]ata Structure
- Input: A sorted array of numbers
- Output: An integer (the index) or `nil`

[A]lgorithm
- Get the lower and upper bound of index
- While the lower bound is smaller than or equal to the upper bound,
  - Get the middle index
  - Retrieve the element of that index
  - If the element is our target,
    - Return the index
  - Else if the element is greater than our target,
    - Set the upper bound to the middle index - 1
  - Else if the element is lower than our target,
    - Set the lower bound to the middle index + 1
- Return `nil`

=end

def binary_search(array, target)
  lower_bound = 0
  upper_bound = array.size - 1

  while lower_bound <= upper_bound
    middle_index = (lower_bound + upper_bound) / 2
    middle_element = array[middle_index]
    if middle_element == target
      return middle_index
    elsif middle_element > target
      upper_bound = middle_index - 1
    else
      lower_bound = middle_index + 1
    end
  end

  nil
end

p binary_search([2, 5, 6, 8, 10, 11, 12], 10)
p binary_search([2, 5, 6, 8, 10, 11, 12], 9)
