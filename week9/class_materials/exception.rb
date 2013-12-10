class RobError < Exception
	def message
		"SOMETHING FUK DUP"
	end
end

begin
	raise "YIPES"
	File.open('hello.txt')
rescue => e
	puts "Something went wrong."
rescue Errno::ENOENT => e
	puts "Well shoot. Doesn't look like that's a file."
ensure
	puts "We're done here."
end
catch :yipes do
	i = 0
	sleep(2)
	while i<10
		throw :yipes if i == 5
		puts i+=1
	end
end