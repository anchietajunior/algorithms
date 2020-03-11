=begin
Write some code, that will flatten an array of arbitrarily 
nested arrays of integers into a flat array of integers. 
e.g. [[1,2,[3]],4] -> [1,2,3,4].
Your solution should be a link to a gist on gist.github.com 
with your implementation.
When writing this code, you can use any language you're 
comfortable with. The code must be well tested and documented. 
Please include unit tests and any documentation you feel is 
necessary. In general, treat the quality of the code as if 
it was ready to ship to production.
Try to avoid using language defined methods like Ruby's 
Array#flatten or JavaScript's Array.flat.
=end

# Implementation
def flatten array
  # create new array
  @new_arr = []
  # create definition to iterate the array
  def iterate_array array
    # for loop
    for i in array do
      # if it is an array, recurse with iterate function
      # else, add the element to the new array
      if i.is_a?(Array)
        iterate_array i
      else
        @new_arr << i
      end
    end
  end
  # call the definition to iterate array
  iterate_array array
  # return the created array
  @new_arr
end

# Assertions
def flatten_equal(array1, array2)
  puts "Assert equal: "
  flatten(array1) == array2 ? "Ok" : "Error"
end

def flatten_equal_null(array1, array2)
  puts "Assert equal null: "
  flatten(array1) - array2 == [] ? "Ok" : "Error"
end

# Tests
p flatten_equal([1, 2, [3]], [1, 2, 3])
p flatten_equal([1, 2, [3, 4]], [1, 2, 3, 4])
p flatten_equal([1, 2, [3, 4, [5, [6]]]], [1, 2, 3, 4, 5, 6])
p flatten_equal([1, 2, [3, 4, [5, [6, 7]]]], [1, 2, 3, 4, 5, 6, 7])
p flatten_equal([[1], [2], [3, 4], [5, 6, [7, 8]]], [1, 2, 3, 4, 5, 6, 7, 8])

p flatten_equal_null([1, 2, [3]], [1, 2, 3])
p flatten_equal_null([1, 2, [3, 4]], [1, 2, 3, 4])
p flatten_equal_null([1, 2, [3, 4, [5, [6]]]], [1, 2, 3, 4, 5, 6])
p flatten_equal_null([1, 2, [3, 4, [5, [6, 7]]]], [1, 2, 3, 4, 5, 6, 7])
p flatten_equal_null([[1], [2], [3, 4], [5, 6, [7, 8]]], [1, 2, 3, 4, 5, 6, 7, 8])
