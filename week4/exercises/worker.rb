class Worker

  def self.work (repeat_count=1)
    i = nil
    repeat_count.times {i = yield}
    i
  end

end