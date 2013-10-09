describe "NamePrinter Application" do

  context "When someone is logged in" do

    it "should say a name" do
      # marty is equal to marty
      # eq is an rspec matcher
      "Marty".should eq "Marty"
    end
  end
end