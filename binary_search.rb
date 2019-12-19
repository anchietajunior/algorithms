# Binary

def binary_search array, target
  # Define the lower number and highest number according to the list
  lower = 0
  higher = array.length - 1
  # Loop while the lower number is < or = the highest number
  while lower <= higher
    # Define the middle number by a simple math
    mid = (lower + higher) / 2
    # Define the try
    kick = array[mid]
    # If the try is equal to the target, return the middle number (position in the list)
    if kick == target
      return mid
    # If the try is bigger than the target, set the new highest number to middle middle - 1
    elsif kick > target
      higher = (mid - 1)
    # Else sets the lower number to middle number + 1
    else
      lower = (mid + 1)
    end
  end
  # If the number is not in the list return nil
  return nil
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 , 20]

p "#{binary_search(numbers, 17)}"
