class Worker
  def self.work &block
    block.call if block_given?
  end
end
