# This is a simple order by selection Alghoritm
# This a O(n x n) or O(n²) algorithm

def search_smallest_number(arr)
  smallest = arr[0]
  smallest_index = 0
  for i in 0..(arr.length - 1) do
    smallest = arr[i] and smallest_index = i if arr[i] < smallest
  end
  return smallest_index
end

def sort_by_select(arr)
  newArr = []
  while (arr.length - 1) >= 0 do
    smallest = search_smallest_number(arr)
    newArr.push(arr.delete_at(smallest))
  end
  p "THE NEW ARR ORDERED IS: #{newArr}"
end

sort_by_select([6, 7, 12, 1, 8, 5, 32, 78, 34, 16, 2]);
