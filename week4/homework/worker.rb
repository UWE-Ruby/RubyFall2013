class Worker
  def self.work
    yield if block_given?
  end
end
