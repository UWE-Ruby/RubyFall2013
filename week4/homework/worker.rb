class Worker
  def self.work count=1, &block
    count.times.inject(0) {block.call if block_given?}
  end
end
