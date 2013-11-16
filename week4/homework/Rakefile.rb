task :default => [:hello_world]

#can have multiple detaults
#rake is task management

desc "This outputs hello world!"
task :hello_world do
	puts test
end

def test
	"tequila"
end