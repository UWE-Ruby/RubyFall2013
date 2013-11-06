class Worker
  def self.work a=0
  (a.zero? ? yield : (a-1).times {yield } )
  #(a-1).times {|input| yield}
  yield   
  end
end