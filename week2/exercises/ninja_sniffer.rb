class NinjaSniffer

  attr_accessor :nose

  def initialize
    @nose = true
  end

  def sniff
  end

  def detect(suspect)
    suspect.ninja
  end

  def barkbarkbark(suspect)
    suspect.ninja = false
  end

  def lick(suspect)
    "lick"
  end
end

class Ninja

  attr_accessor :ninja 

  def initialize
    @ninja = true
  end
end

class NonNinja

  attr_accessor :ninja
  def initialize
    @ninja = false
  end
end