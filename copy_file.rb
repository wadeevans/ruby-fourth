File.open("test.txt") do |file|
	while line = file.gets
		puts line
	end
end