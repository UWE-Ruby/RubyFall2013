class Worker
  def self.work (number = 1)
    result = ''
    number.times {result = yield if block_given?}
    result
  end
  
  #or
  
  ##class << self
  ##  def work number=1
  ##    result = ''
  ##    number.times {result = yield if block_given?}
  ##    result
  ##  end  
  ##end
end
