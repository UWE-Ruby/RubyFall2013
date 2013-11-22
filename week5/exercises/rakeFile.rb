
task :read do
File.open("names") do |f|
f.read
end