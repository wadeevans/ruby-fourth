file = File.new('three_lines.txt');

file.each{|line| puts "The next line in the file contains: '#{line.chomp}'"}

file.close





File.open('three_lines.txt') do |file|
	file.each_line do |line|
		puts "The next line in the file contains: '#{line.chomp}'"
	end
end

