numbers_to_sort = [4,3,78,2,0,2]

def bubble_sort(arr)
  unsorted_end = arr.length
  last_swap_position = 0
  swapped = []

  arr[..-1].each_with_index do |num, index|
    if index > index + 1 
      swapped = [index + 1, index]
      last_swap_position = index
    end
    unsorted_end = last_swap_position
    unless unsorted_end <= 1
      break
    end
  end
  swapped
end

bubble_sort(numbers_to_sort)