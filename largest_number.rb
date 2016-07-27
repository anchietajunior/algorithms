# The function receives an array and verify each of the elements inside
# so returns the largest number,
# in the end, prints this number

def largest_number array
	largest = 0

	array.each do |i|
		largest = i if i > largest
	end

	largest
end

a = [1,5,10,20,2,6,5,7]
p largest_number(a)