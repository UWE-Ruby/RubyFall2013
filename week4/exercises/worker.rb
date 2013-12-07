class Worker
def self.work n = 1
 array = Array.new n

 array.each do 
  	yield
  	end
end
	
end