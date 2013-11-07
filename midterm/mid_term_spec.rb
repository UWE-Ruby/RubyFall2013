require "#{File.dirname(__FILE__)}/turkey"

describe Turkey do

  before do
    @turkey = Turkey.new(10)
  end

  it "should report the turkey weight" do
    @turkey.weight.should equal 10
  end

  it "should be a kind of animal" do
    @turkey.kind_of?(Animal).should be_true
  end

  it "should gobble speak" do
    @turkey.gobble_speak("Hello I Am a Turkey. Please Don't Eat Me.").should eq "Gobble Gobble Gobble gobble Gobble. Gobble Gobb'le Gobble Gobble."
  end

end

require "#{File.dirname(__FILE__)}/thanksgiving_dinner"

describe ThanksgivingDinner do

 before do
   @t_dinner = ThanksgivingDinner.new(:vegan)
   @t_dinner.guests = ["Aunt Petunia", "Uncle Vernon", "Aunt Marge", "Dudley", "Harry"] # I know I just made a British family celebrate Thanksgiving, but it could be worse: It could have been the 4th of July! :)
 end

 it "should be a kind of dinner" do
   @t_dinner.kind_of?(Dinner).should be_true
 end

 # Use inject here
 it "should sum the letters in each guest name for the seating chart size" do
   @t_dinner.seating_chart_size.should eq 45
 end

 it "should provide a menu" do
   @t_dinner.respond_to?(:menu).should be_true
 end

 context "#menu" do

   it "should have a diet specified" do
     @t_dinner.menu[:diet].should eq :vegan
   end

   it "should have proteins" do
     @t_dinner.menu[:proteins].should eq ["Tofurkey", "Hummus"]
   end

   it "should have vegetables" do
     @t_dinner.menu[:veggies].should eq [:ginger_carrots , :potatoes, :yams]
   end

   # Dinners don't always have dessert, but ThanksgivingDinners always do!
   it "should have desserts" do
     @t_dinner.menu[:desserts].should eq({:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]})
   end

 end

 # Use String interpolation, collection methods, and string methods for these two examples
 it "should return what is on the dinner menu" do
   @t_dinner.whats_for_dinner.should eq "Tonight we have proteins Tofurkey and Hummus, and veggies Ginger Carrots, Potatoes, and Yams."
 end

 it "should return what is on the dessert menu" do
   @t_dinner.whats_for_dessert.should eq "Tonight we have 5 delicious desserts: Pumkin Pie, Chocolate Moose, and 3 molds: Cranberry and Mango and Cherry."
 end
end
