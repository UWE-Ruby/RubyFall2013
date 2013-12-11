# - read all lines and output name to scree
# - task to create class directory
# - task depends on class direcotry task create dir for each name 

task :default => :craete_file_for_each

desc "Prints out all names"
task :read_lines do
  file_helper("names") do |line|
    puts line
  end
end


desc "Creates a folder called 'class'"
task :create_class_dir do
  puts "creating class directory"
  Dir.mkdir("class") unless Dir.exists?("class")
end


desc "Create a file for each student in class"
task :craete_file_for_each => [:create_class_dir] do
  puts "creating for each student"
  Dir.chdir("class")
  file_helper("../names") do |line|
    Dir.mkdir(line) unless Dir.exists?(line)
  end
end




def file_helper(file_name)
  File.open(file_name) do |f|
    f.each do |line| 
      yield line.chomp
    end
  end
end