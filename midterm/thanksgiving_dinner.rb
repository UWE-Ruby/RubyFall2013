class String
  def titlecase
    self.gsub(/\b\w/){|f| f.upcase}
  end

  def humanize
    self.gsub('_', ' ').titlecase
  end
end

module MenuFinder
  MENUS = {
    :vegan => {
      :diet => :vegan,
      :proteins => ["Tofurkey", "Hummus"],
      :veggies => [:ginger_carrots , :potatoes, :yams]
    }
  }
  def find_menu(kind)
    MENUS[kind]
  end
  def find_dessert
    @menu[:desserts] = {:pies => [:pumkin_pie],
      :other => ["Chocolate Moose"],
      :molds => [:cranberry, :mango, :cherry]}
  end
end

class Dinner
  include MenuFinder
  attr_accessor :menu, :guests, :kind
  def initialize(kind)
    @kind = kind
    @menu = find_menu(kind)
  end
  def seating_chart_size
    guests.inject(0){|sum,g| sum += g.size}
  end

  def proteins
    @menu[:proteins].map{|w| w.titlecase}.join(' and ')
  end

  def veggies
    @menu[:veggies].map{|w| w.to_s.humanize}.join(', ').gsub(/, \w*\z/){|w| w.gsub(',', ', and')}
  end

  def whats_for_dinner
    "Tonight we have proteins #{proteins}, and veggies #{veggies}."
  end
end

class ThanksgivingDinner < Dinner
  def number_of_desserts
    @menu[:desserts].map{|k,v| v}.flatten.count
  end

  def pies
    @menu[:desserts][:pies].map{|s| s.to_s.humanize}.join(',')
  end

  def other
    @menu[:desserts][:other].join(',')
  end

  def number_of_molds
    @menu[:desserts][:molds].count
  end

  def molds
    @menu[:desserts][:molds].map{|s| s.to_s.titlecase}.join(' and ')
  end

  def whats_for_dessert
    find_dessert
	  "Tonight we have #{number_of_desserts} delicious desserts: #{pies}, #{other}, and #{number_of_molds} molds: #{molds}."
  end
end
