=begin

[P]roblem
- To implement the bubble sort algorithm

[E]xample
- Input: [4, 2, 7, 1, 3]
  Output: [1, 2, 3, 4, 7]

[D]ata Structure
- Input: An array
- Output: A sorted array

[A]lgorithm
# Object Initialization
- Create a copy of the input array for the sorting
- Create two pointers that point two consecutive elements in the array
- Initialize an array to store the information that
  if an element is in its correct place
- Initialize a Boolean variable to indicate if a swapping is done
  for the current pass-through

# Sorting Process
- From the first element, examine two consecutive elements at a time
  - If the element pointed by the first pointer is greater than
    that pointed by the second pointer
    - Swap them
    - Indicate that a swapping is done for the current pass-through
  - Both pointers go on to the next element
  - If the second pointer points outside of the array or
    points to the element that is in its correct place
    - Mark that the element pointed by the first pointer is in its correct place
    - Set the pointers to the beginning of the array
- Reset the swapping indicator for the next pass-through
- Repeat the above process until no swapping is done for a pass-through

- Return the sorted array

=end

def bubble_sort(arr)
  sorted_arr = arr.clone
  sorted_ele = Array.new(sorted_arr.size, false)
  pointer_1, pointer_2 = [0, 1]
  swapped = false

  loop do
    element_1, element_2 = sorted_arr[pointer_1, 2]
    if element_1 > element_2
      sorted_arr[pointer_1, 2] = sorted_arr[pointer_1, 2].reverse
      swapped = true
    end
    
    pointer_1 += 1; pointer_2 += 1
    if pointer_2 >= sorted_arr.size || sorted_ele[pointer_2]
      sorted_ele[pointer_1] = true
      pointer_1, pointer_2 = [0, 1]
      break unless swapped
    end

    swapped = false
  end

  sorted_arr
end

# code in the common-sense book
def bubble_sort(arr)
  unsorted_until_index = arr.size - 1
  sorted = false

  until sorted  # each iteration represents a pass-through
    sorted = true
    (0...unsorted_until_index).each do |index|
      if arr[index] > arr[index + 1]
        arr[index, 2] = arr[index, 2].reverse
        sorted = false
      end
    end
    unsorted_until_index -= 1
  end

  arr
end

p bubble_sort([4, 2, 7, 1, 3])
p bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1])
p bubble_sort(['c', 'b', 'a'])
