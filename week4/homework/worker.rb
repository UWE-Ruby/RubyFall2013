class Worker
  def self.work(input = 1)
      (input-1).times {yield}
      yield 
  end
end
