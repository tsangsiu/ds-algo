class SortableArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def partition!(left_pointer, right_pointer)
    pivot_index = right_pointer
    pivot = @array[pivot_index]
    right_pointer -= 1
    while true
      while @array[left_pointer] < pivot do
        left_pointer += 1
      end

      while @array[right_pointer] > pivot do
        right_pointer -= 1
      end

      if left_pointer >= right_pointer
        break
      else
        @array[left_pointer], @array[right_pointer] =
          @array[right_pointer], @array[left_pointer]

        # gear up for the next round of left and right pointer movements
        left_pointer += 1
      end
    end
  
    # swap the value of the left pointer with the pivot as the final step of partition
    @array[left_pointer], @array[pivot_index] =
      @array[pivot_index], @array[left_pointer]
    
    return left_pointer
  end

  def quicksort!(left_index = 0, right_index = @array.size - 1)
    # base case: the subarray has 0 or 1 element, do nothing
    return if right_index - left_index <= 0

    pivot_index = partition!(left_index, right_index)
    quicksort!(left_index, pivot_index - 1)
    quicksort!(left_index + 1, right_index)
  end

  def quickselect!(kth_lowest_value, left_index = 0, right_index = @array.size - 1)
    return @array[left_index] if right_index - left_index <= 0
  
    pivot_index = partition!(left_index, right_index)
    if kth_lowest_value < pivot_index
      quickselect!(kth_lowest_value, left_index, pivot_index - 1)
    elsif kth_lowest_value > pivot_index
      quickselect!(kth_lowest_value, pivot_index + 1, right_index)
    else
      return @array[pivot_index]
    end
  end
end

arr = SortableArray.new([0, 5, 2, 1, 6, 3])
arr.quicksort!
p arr.array

array = SortableArray.new([0, 50, 20, 10, 60, 30])
p array.quickselect!(1) # find the second-to-lowest value
