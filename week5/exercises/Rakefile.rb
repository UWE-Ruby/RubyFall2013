#task :default => [:hello_world]

desc "spits out the contents of the file"
task :filereader do 
  a = File.open("names.txt", "r") 
  a.readlines
end