task :readlines do 
	File.open("names").each_line {|line| puts line}
end

task :makedir do
	Dir.mkdir("class")
end