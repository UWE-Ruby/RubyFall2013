=begin
  responds to: guests, menu, diet, proteins (array w/strings), veggies(array w/symbols and strings), dessert (hash)
  kind of: Dinner
  takes parameter: :diet
  method: seating_chart_size (inject)
          whats_for_dinner
          whats_for_dessert
=end
class Dinner
end

class ThanksgivingDinner < Dinner
  attr_accessor :diet, :guests, :menu, :proteins, :veggies, :desserts
  def initialize diet
    @diet = diet
    @guests = []
    @menu = {diet: @diet}
    if @menu[:diet] == :vegan
      @menu = { diet: :vegan, proteins: ["Tofurkey", "Hummus"],
           veggies: [:ginger_carrots , :potatoes, :yams],
           desserts: {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}}
    end
  end

  def seating_chart_size
    @guests.inject(0) {|sum, element| sum + element.length}
  end

  def guests
    @guests
  end

  def whats_for_dinner
    "Tonight we have proteins #{things_lister(@menu[:proteins])}, and veggies #{things_lister(@menu[:veggies])}."
  end

  def whats_for_dessert
    "Tonight we have #{dessert_counter(@menu[:desserts])} delicious desserts: #{things_lister(@menu[:desserts][:pies])}, #{things_lister(@menu[:desserts][:other])}, and #{@menu[:desserts][:molds].length} molds: #{things_lister(@menu[:desserts][:molds], true)}."
  end

  def things_lister input, molds = false
    d = list_preparer(input)
    if d.length == 1
      output = d[0]
    elsif d.length == 2
      output = d[0] + " and " + d[1]
    else
      count = 0
      output = ""      
      if not molds
        d.each do |i|
          if count < d.length-1
            output += (i + ", ")
            count += 1
          else
            output += ("and " + i)
          end
        end

      else
        d.each do |i|
          if count < d.length-1
            output += (i + " and ")
            count += 1
          else
            output += i
          end
        end
      end
    end

    output
  end

  def list_preparer input
    d = input.flatten(-1).map! do |i|     #turn the input into a flat array of words
      i.to_s.capitalize
      end
    d.delete_if {|x| x == "Pies" or x == "Other" or x == "Molds"}
    d.each do |i|
      pos = /[_ ]/ =~ i
      if pos
        i[pos] = " "
        i[pos+1] = i[pos+1].capitalize
      end
    d
    end
  end

  def dessert_counter input
    input[:pies].length + input[:other].length + input[:molds].length
  end
end