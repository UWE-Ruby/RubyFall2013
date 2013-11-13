# Hint: require needs to be able to find this file to load it
require "./simon_says.rb"

describe SimonSays do
  include SimonSays # Hint: Inclusion is different than SimonSays.new (read about modules)
  
  # Hint: We are just calling methods, we are not passing a message to a SimonSays object.
  ## module SimonSays
  ##    def echo(st)
  ##        st
  ##    end
  it "should echo hello" do
    echo("hello").should == "hello"
  end
  
  it "should echo bye" do
    echo("bye").should == "bye"
  end
  ##def shout(st)
  ##        st.upcase
  ##end
 
  it "should shout hello" do
    shout("hello").should == "HELLO"
  end
  
  it "should shout multiple words" do
    shout("hello world").should == "HELLO WORLD"
  end
  ##        def repeat(st, t=2)
  ##                ([st]*t).join(' ')
  ##        end

  it "should repeat" do
    repeat("hello").should == "hello hello"
  end

  it "should repeat a number of times" do
    repeat("hello", 3).should == "hello hello hello"
  end
  ##        def start_of_word(st,i)
  ##                st[0...i]
  ##        end
  it "should return the first letter" do
    start_of_word("hello", 1).should == "h"
  end
  
  it "should return the first two letters" do
    start_of_word("Bob", 2).should == "Bo"
  end
  ##        def first_word(st)
  ##                st.split.first
  ##        end

  it "should tell us the first word of 'Hello World' is 'Hello'" do
    first_word("Hello World").should == "Hello"
  end

  it "should tell us the first word of 'oh dear' is 'oh'" do
    first_word("oh dear").should == "oh"
  end
end
##module SimonSays
##        def echo(st)
##                st
##        end
##        
##        def shout(st)
##                st.upcase
##        end
##
##        def first_word(st)
##                st.split.first
##        end
##
##        def start_of_word(st,i)
##                st[0...i]
##        end
##        
##        def repeat(st, t=2)
##                ([st]*t).join(' ')
##        end
##end
