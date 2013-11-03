class Worker

  def self.work n = 1
    r = ''
    n.times {r = yield}
    r
  end

end
