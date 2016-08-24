def merge_sort(list)   # The merge_sort method calls the merge
  if list.length <= 1  # IF list is less than equal 1
    list               # Return List
  else
    mid = (list.length / 2).floor   # Divide length of list by 2
    left = merge_sort(list[0..mid - 1]) # sort list from index 0 to mid
    right = merge_sort(list[mid..list.length]) # sort from mid to end
    merge(left, right)  # merge value left and right
  end
end

def merge(left, right)
  if left.empty?    # If left equal empty then return right
    right
  elsif right.empty?  # If right equal empty then return left
    left
  elsif left.first < right.first  # Then if element on left is less than on right
    [left.first] + merge(left[1..left.length], right) # Add element to the rest of the list
  else              # If element on right is less than on left
    [right.first] + merge(left, right[1..right.length]) # Add the element to the rest of the list
  end
end

arr = [1, 4, 3, 8, 5, 2, 10, 9]
p merge_sort(arr)
