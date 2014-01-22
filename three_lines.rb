file = File.new('three_lines.txt');

file.each{|line| puts "The next line in the file contains: '#{line.chomp}'"}

file.close





File.open('three_lines.txt') do |file|
	file.each_line do |line|
		puts "The next line in the file contains: '#{line.chomp}'"
	end
end

File.open('three_lines.txt', 'w') do |file|
	file.puts 'Oh no! Four lines now'
	file.puts 'and a fifth.'
end

IO.foreach('three_lines.txt') {|line| puts line}

