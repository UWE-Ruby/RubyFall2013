# exception example
#class JonasError < Exception
# def message
#  "its messed up "
#  end
#end

#begin

 #raise "AGGGG"
# raise JonasError.new

#puts 0/1

# f = File.open('hello.txt') 
# f.close
# f.read
#rescue  => e
##rescue => e
#  puts e
#  puts e.class
#rescue IOError => e
# puts "there was a io error"
#ensure
# puts  "hello world"
#end
#
#
catch :yipes do

 i = 0 
 while i<10
  sleep (2) and throw :yipes if i == 5
  puts i+=1
 end
end

