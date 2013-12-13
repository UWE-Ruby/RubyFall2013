task :outputs_name do
	File.open("names").readlines.each do |line|
   	puts line
	end
end