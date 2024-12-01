def swap(arr, index)
  unless (index + 1) == arr.length
    if arr[index] > arr[index+1]
      temp = arr[index+1]
      arr[index+1] = arr[index]
      arr[index] = temp 
    end
  end
  arr
end

def is_sorted? (arr)
  counter = 0
  max = nil
  is_sorted = false
  arr.each do |value|
    if (max.nil? || value >= max)
      max = value
      counter += 1
    end
  end

  if counter == arr.length
    is_sorted = true
  end
  is_sorted
end

def bubble_sort (arr)
  until is_sorted?(arr)
    arr.each_with_index {|val, index| swap(arr, index)} 
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])