class Worker
  def self.work a=0
  (a.zero? ? yield : (a-1).times {yield } ) # inject can replace this. 
  #(a-1).times {|input| yield}
  yield   
  
  #class solution
  n.times.inject(nil){|results, i| yield}
  n.times.inject(nil){ yield } 
  
  # inject needs a starting variable [0].inject{|results, i| puts i }
  # this outputs zero as the inject module doesn't run the block next to it if it don't have a initial value. 
  
  end
end