task :default => [:hello_world]

desc "This is the hellow worrld script" 
task :eatit do
	puts File.read("names")
end

task :mkdir do
	Dir.mkdir("Class")
end

task : create_student_dirs => [:create_class_dir ]do
  Dir.chdir('Class')
  File.open("../names") do |f|
    f.map{|line| Dir.mkdir line.chomp}
      end
end

task : create_student_dirs => [:create_class_dir ]do
  Dir.chdir('Class')
  File.open("../names") do |f|
    f.map{|line| Dir.mkdir line.chomp}
      end
end

def file_helper(file_name)
	File.open(file_name) do |f|
	f.each do |line|
		yield line.chomp
		end
	end
end
