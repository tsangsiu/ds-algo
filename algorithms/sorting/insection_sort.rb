=begin

[P]roblem
- To implement the insection sort algorithm

[E]xample
- Input: [4, 2, 7, 1, 3]
  Output: [1, 2, 3, 4, 7]

[D]ata Structure
- Input: An array
- Output: A sorted array

[A]lgorithm
- This is going to be a destructive method
- For the n-th pass-through, take out the element at index n
- For every element to the left of that element,
  compare each element, from right to left, with the taken-out element
- If the element is greater than the taken-out element,
  shift that element to the right to fill the gap
- Continue the shifting until
  the element is smaller than or equal to the element that is taken out, or
  the leftmost end is reached
- Put the taken-out element to the gap
- Repeat the above pass-through until we reach the end of the array

=end

def insection_sort(arr)
  (1...arr.size).each do |index|
    taken_out_element = arr[index]
    arr[index] = nil

    (index - 1).downto(0).each do |left_index|
      if arr[left_index] > taken_out_element
        arr[left_index + 1] = arr[left_index]
        arr[left_index] = nil
      else
        break
      end
    end

    arr[arr.index(nil)] = taken_out_element
  end

  arr
end

# code in the common-sense book
def insection_sort(arr)
  (1...arr.size).each do |index|
    temp_value = arr[index]
    position = index - 1
    
    while position >= 0
      if arr[position] > temp_value
        arr[position + 1] = arr[position]
        position -= 1
      else
        break
      end
    end
    
    arr[position + 1] = temp_value
  end
  
  arr
end

p insection_sort([1, 2, 3])
p insection_sort([4, 2, 7, 1, 3])
p insection_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1])
p insection_sort(['c', 'b', 'a'])
