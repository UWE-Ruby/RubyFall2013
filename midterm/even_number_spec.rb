 #- Write a passing rspec file called even_number_spec.rb that tests a class called EvenNumber.
  #  - The EvenNumber class should:
   #    - Only allow even numbers
    #   - Get the next even number
     #  - Compare even numbers
      # - Generate a range of even numbers

require "#{File.dirname(__FILE__)}/even_number.rb"


describe EvenNumber do
  it "should only allow even numbers" do
  	a = EvenNumber.new(3, 4, 5)
  	a.input.should == "even numbers only buddy"
  end	
  
  it "should be able to get the next even number" do
    a = EvenNumber.new(2, 4, 6, 8)
    a.next.should eq 2
    a.next.should eq 4
    a.next.should eq 6
    a.next.should eq 8
  end
  
  it "should compare even numbers" do
  	a = EvenNumber.new(2, 4)
  	a.compare(0,1).should be false
  	b = EvenNumber.new(2,2)
  	b.compare(0,1).should be true
  end

  it "should generate a range of even numbers" do
  	a = EvenNumber.new(2,8)
  	a = a.range(0,1)
  	a.should eq [2,4,6,8]
  end
end