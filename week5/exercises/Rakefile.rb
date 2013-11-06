desc "print all the names"
task :print_names do 
  file_helper("names") do |line| 
    puts line
  end
end

desc "make the class directory"
task :create_class_dir do 
  dir_name = 'class'
  Dir.mkdir dir_name unless Dir.exists? dir_name
end

desc "make the student directories" 
task :create_student_dirs => [:create_class_dir] do
  Dir.chdir('class')
  file_helper("../names") do |line| 
    Dir.mkdir line
  end
end

task :remove_all_dirs do
  Dir.chdir('class')
  file_helper("../names") do |line| 
    Dir.rmdir line
  end
  Dir.chdir('..')
  Dir.rmdir('class')
end

def file_helper(file_name)
  File.open(file_name) do |f|
    f.each do |line|
      yield line.chomp
    end
  end
end







