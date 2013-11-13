class Worker
  def self.work count=1
    count.times.inject(0) {yield if block_given?}
  end
end
