	class DLBError < Exception  :where all error come from in ruby
	  #can be specific for a specific class
	  #Doc has list of all child errors from exception
	  #can grab backtrace from an error
	  #message on function - so if want custom messaging
	  def message
	  "DLB threw an error"
	  end
  end
	begin 
	#raise 'Yipes'
	rais DLBError.new
	  File.open ('hello.txt')
	rescue DLBError => e
	  puts e.message
	rescue Errno::ENDENT=> e
	  puts e (puts e.class)
	rescue IOError
	  puts specific message
	ensure #(like finally) …try, catch, finally - always ensure that this runs when even if there is an error	puts "hello world"   -even if there are no errors
	  puts "hello world"
	end
	
	catch :yipes do
	  i=0
	  while i<10
	    sleep (2) and throw :yipes if i ==5 #and lower precedence thatn && - want it here
	    puts i+=1
    end
  end
