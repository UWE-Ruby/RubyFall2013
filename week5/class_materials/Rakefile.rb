task :default => [:hello_world]

desc "This outputs hello world!"
task :hello_world do
	puts test
end

def test
	"tequila"
end
