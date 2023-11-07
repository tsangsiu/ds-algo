=begin

[P]roblem
- To implement the selection sort algorithm

[E]xample
- Input: [4, 2, 7, 1, 3]
  Output: [1, 2, 3, 4, 7]

[D]ata Structure
- Input: An array
- Output: A sorted array

[A]lgorithm
- This is going to be a destructive method
- Iterate through the array from the first to second-last element
- For each iteration,
  - Take note of the value of the current element
  - Iterate through elements to the right of the current element
    - Take note of the index of the element
      whose value is the smallest and smaller than the current element
  - If such an element is found, swap its position with the current element
- Return the array

=end

def selection_sort(arr)
  (0...(arr.size - 1)).each do |curr_index|
    curr_element = arr[curr_index]
    min_element = arr[(curr_index + 1)..].min
    if min_element < curr_element
      swap_index = arr.index(min_element)
      arr[curr_index], arr[swap_index] = arr[swap_index], arr[curr_index]
    end
  end
  arr
end

p selection_sort([4, 2, 7, 1, 3])
p selection_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1])
p selection_sort(['c', 'b', 'a'])
