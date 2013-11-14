desc "print all names"
task :print_names do
	dir_name
	File.open("names")
end

desc "make student directories"
task :create_student_dirs => [:create_student_dirs] do
	dir_name
end

desc "make class directory"
task :create_class_dirs => [:create_class_dirs] do
	dir_name
end

desc "remove all directories"
task :remove_dirs => [:remove_dirs] do
	dir_name
end

def file_helper(file_name)
	File.open(file_name) do |f|
		f.each do |line|
			yield line.chomp
		end
	end
end