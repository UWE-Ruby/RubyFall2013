class CodeTimer

  def self.time_code n=1
    start_time = Time.now
    n.times { yield } 
    (Time.now - start_time) / n
  end

end