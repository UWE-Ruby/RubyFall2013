require "./ninja_sniffer.rb"

describe NinjaSniffer do
  before :each do
    @sniffer = NinjaSniffer.new
    @suspect = Ninja.new
    @cheri = NonNinja.new
  end
  it "should sniff" do
    @sniffer.should respond_to "sniff"
  end

  it "should detect a ninja" do
    @sniffer.detect(@suspect).should eq true
  end

  it "should not have false positives" do
    @sniffer.detect(@cheri).should_not eq true
  end

  it "should be able to convert ninjas" do
    @sniffer.barkbarkbark(@suspect)
    @sniffer.detect(@suspect).should_not eq true
  end

  it "should be able to lick non-ninjas" do
    if @sniffer.detect(@cheri) == false
      @sniffer.lick(@cheri).should eq "lick"
    end
  end
end