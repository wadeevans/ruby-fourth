def introspection
	file = File.open(__FILE__, "r")

	file.readlines.each do |line|
	puts "#{line}"
	end
	file.close
end

def save_input(input)
	File.open('hello_from_ruby.txt', 'w') do |file|
		file.puts input
	end
end

def read_file(filename)
	file = File.open(filename, "r")

	file.readlines.each do |line|
	puts "#{line}"
	end
	file.close
end

def process(selection)
	case selection
	when "Save", "save", "SAVE"
		# save the input to file
		puts "You chose Save"
		save_input(input)
	when "Read", "read", "READ"
		# read the input file
		puts "You chose Read"
		read_file("hello_from_ruby.txt")
	when "Introspection"
		introspection()
	
	when "9"
		# exit
		exit
	else
		puts "I don't understand, please try again"
	end
end





  	puts "Enter Input to enter some input: "

	input = STDIN.gets

	puts "Enter Save to save this to file: "
	puts "Enter Read to read the file: "
	puts "Enter Introspection to read source file: "

	command = STDIN.gets.chomp

	

	case command
	when "Save", "save", "SAVE"
		# save the input to file
		puts "You chose Save"
		save_input(input)
	when "Read", "read", "READ"
		# read the input file
		puts "You chose Read"
		read_file("hello_from_ruby.txt")
	when "Introspection"
		introspection()
	
	when "9"
		# exit
		exit
	else
		puts "I don't understand, please try again"
	end





	



