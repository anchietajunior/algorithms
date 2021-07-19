# Binary search in Ruby using While

def binary_search list, target
  p "STARTED THE BINARY SEARCH!"
  lower = 0
  higher = list.length - 1
  while lower <= higher
    mid = (lower + higher) / 2
    kick = list[mid]
    return "FOUND the target: #{mid}" if kick == target
    higher = (mid - 1) if kick > target
    lower = (mid + 1) if kick < target
  end
  return "Target not FOUND"
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 , 20]
p "#{binary_search(numbers, 17)}"
