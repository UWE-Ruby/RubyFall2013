# first attempt that works
#class Worker
#  def self.work(loop_count = 0)
#    if loop_count != 0
#      for i in 1...loop_count
#        yield
#      end
#    end
#    yield
#  end
#end
#
# 2nd attempt a little better
#class Worker
#  def self.work(loop_count = 0)
#    i = 1
#    begin
#      my_test = yield
#      i += 1
#    end until i > loop_count
#    return my_test
#  end
#end
#
# 3rd attempt a little different
#class Worker
#  def self.work(loop_count = 1)
#    i = 0
#    while i < loop_count
#      my_test = yield
#      i += 1
#    end
#  return my_test
#  end
#end

#oh, best of all
class Worker
  def self.work(loop_count = 1)
    (0..loop_count).inject {yield}
  end
end
