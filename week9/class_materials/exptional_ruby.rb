class ReneeError < Exception
  def message
    "Renee Threw an Error, please reboot her!"
  end
end


begin

  raise ReneeError.new

  puts 1/0

  f = File.open('hello.txt')
  f.close
  f.read
rescue IOError => e
  puts "There was an IOError"
rescue  Exception => e
  puts e
ensure
  puts "hello world"
end

catch :yipes do
  
  i = 0

  while i<10
    sleep(2) and throw :yipes if i == 5 
    puts i+=1
  end

end

