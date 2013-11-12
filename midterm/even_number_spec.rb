require "#{File.dirname(__FILE__)}/even_number"

describe EvenNumber do

 before do
    @number = EvenNumber.new
  end

  it "Should only allow even numbers" do
    @number.even(6).should eq true
    @number.even(7).should eq false
  end

  it "Should get the next even number" do
    a = 10
    b = a + 2 
    @number.next_even(a).should == b	
  end

  it "Should compair two even numbers" do
    @number.compair(8, 8).should == 0
    @number.compair(8, 6).should == 1
    @number.compair(6, 8).should == -1
  end	

  it "Should generate a range of even numbers" do
    a = 2..20
    b = a.select {|x| x.even? }
    @number.makerange(2..20).should eq b
  end

end
