def get_file(filename)
	data = ''
	f = File.open(filename, "r")
	f.each_line do |line|
		data += line
	end
	data
end

data = get_file 'README.md'

puts data