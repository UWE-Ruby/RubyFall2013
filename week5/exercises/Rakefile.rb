#reads all the lines and outputs them
task :default => [:names, :make_directory, :indiv_directory]

desc "reads all the lines in the file and outputs them"
task :names do
	File.open("names") do |file|
		file.each_line {|line| puts line}	
		end
end


#creates a 'class' directory
desc "make a 'class' directory"
task :make_directory do
	Dir.mkdir("class") unless Dir.exists? 'class'
end

#dependent on class directory task, makes directory in class directory for each name
desc "make individual directories for each student"
task :indiv_directory do
	a = []
	Dir.chdir("class")
	a.each {|n| Dir.mkdir(n)}
end
