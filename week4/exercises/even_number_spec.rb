
 # - Write a passing rspec file called even_number_spec.rb that tests a class called EvenNumber.
 #    - The EvenNumber class should:
 #       - Only allow even numbers
 #       - Get the next even number
 #       - Compare even numbers
 #       - Generate a range of even numbers

require './even_number.rb'

describe EvenNumberR do

    it "Only allows even numbers" do
    	result = EvenNumberR.only_even(2)
        result.should = 2
    end
=begin
    it "gets the next even number" do
    	pending "something" do
        end
    end

    it "compares even numbers" do
    	pending "something" do
        end
    end

    it "Generates a range of even numbers" do
    	pending "something" do
        end
    end
=end
end