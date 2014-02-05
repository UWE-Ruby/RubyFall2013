# Hint: require needs to be able to find this file to load it
require "./simon_says.rb"

describe SimonSays do
  #include SimonSays # Hint: Inclusion is different than SimonSays.new (read about modules)
  
  # Hint: We are just calling methods, we are not passing a message to a SimonSays object.


  it "should echo hello" do
    SimonSays.echo("hello").should == "hello"
  end
  
  it "should echo bye" do
    SimonSays.echo("bye").should == "bye"
  end

  it "should shout hello" do
    SimonSays.shout("hello").should == "HELLO"
  end
  
  it "should shout multiple words" do
    SimonSays.shout("hello world").should == "HELLO WORLD"
  end

  it "should repeat" do
    SimonSays.repeat("hello").should == "hello hello"
  end

  it "should repeat a number of times" do
    SimonSays.repeat("hello", 3).should == "hello hello hello"
  end

  it "should return the first letter" do
    SimonSays.start_of_word("hello", 1).should == "h"
  end
  
  it "should return the first two letters" do
    SimonSays.start_of_word("Bob", 2).should == "Bo"
  end

  it "should tell us the first word of 'Hello World' is 'Hello'" do
    SimonSays.first_word("Hello World").should == "Hello"
  end

  it "should tell us the first word of 'oh dear' is 'oh'" do
    SimonSays.first_word("oh dear").should == "oh"
  end
end
