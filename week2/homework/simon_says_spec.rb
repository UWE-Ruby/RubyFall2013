# Martin Nash

require "./simon_says.rb"

describe SimonSays do

  # This is a mixin. All methods in SimonSays are now available here.
  include SimonSays
  

  # TEST ECHO
  it "should echo hello" do
    echo("hello").should == "hello"
  end
  
  it "should echo bye" do
    echo("bye").should == "bye"
  end



  # TEST SHOUT
  it "should shout hello" do  
    shout("hello").should == "HELLO"
  end
  
  it "should shout multiple words" do
    shout("hello world").should == "HELLO WORLD"
  end



  # TEST REPEAT
  it "should repeat" do
    repeat("hello").should == "hello hello"
  end

  it "should repeat a number of times" do
    repeat("hello", 3).should == "hello hello hello"
  end



  # TEST START_OF_WORD
  it "should return the first letter" do
    start_of_word("hello", 1).should == "h"
  end
  
  it "should return the first two letters" do
    start_of_word("Bob", 2).should == "Bo"
  end



  # TEST FIRST_WORD
  it "should tell us the first word of 'Hello World' is 'Hello'" do
    first_word("Hello World").should == "Hello"
  end

  it "should tell us the first word of 'oh dear' is 'oh'" do
    first_word("oh dear").should == "oh"
  end
end
