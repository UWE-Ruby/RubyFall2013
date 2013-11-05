class Worker

  def self.work (n=1)
    buffer = nil
    n.times do
      buffer = buffer = yield
    end
    buffer
  end

end