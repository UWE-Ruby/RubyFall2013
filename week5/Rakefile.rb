##task :default => [:hello_world] 
##  desc "This outputs..."
##  task :hello_world do
##      puts "hellow World!" 
##      test
##  end    
##
##  def test 
##    "tequila"
##  end

#task #:default => [:readnames]
  desc "read names"
  task :readnames do
    File.open("names.rb") do |f|
    File.open('outnames.rb','w') do |out|
      f.each do |line|
        puts line
        #out << line
      end
    end
    end
    #Dir.mkdir("test")
  end
  desc "mkdir"
  task :makedir do
    Dir.mkdir("testdir")
  end
###desc "print..."
###task :print_names do 
###    file.open("names")  do |f|
###      f.map{|def line( puts line}
###        
###      end
###      }
###      
###task :create_student_dirs => [:create_class_dir] do
###        
###      f.map
###      
###      dir
###      rake print_names
###      
###      create a helper
###      
###      file_helper("../name") do |line|
###         puts line
###       end
### 
###      file_helper("../name") do |line|
###         Dir.mkdir line
###       end
###      
###      file_helper("../name") do |line|
###        Dir.rmdir line
###      end
###      
###def file_helper(file_name)
###  File.open(file_name) do |f|
###    f.each do \line|
###      yield line.chomp #chomp carriage return
###      
###    end
###  end
###end
###end      