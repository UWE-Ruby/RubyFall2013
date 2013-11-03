class Worker
  def self.work count=1, &block
    temp = nil
    count.times do ||
      temp = block.call if block_given?
    end
    temp
  end
end
