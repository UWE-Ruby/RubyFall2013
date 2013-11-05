class Worker
  class << self
    def work(times = 1, &block)
      times.times do |x|
        return yield if (x += 1) == times
        yield 
      end
    end
  end

end