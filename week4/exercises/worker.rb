module Worker

  def self.work (rounds=1, &block)
    result = nil
    rounds.times { result = yield }
    result
  end

end