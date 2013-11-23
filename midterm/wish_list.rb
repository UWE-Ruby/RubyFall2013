class WishList
  include Enumerable
  attr_writer :wishes

  def each
    @wishes.each_with_index do |w,i|
      yield "#{i+1}. #{w}"
    end
    # @wishes.to_enum.with_index(1) do |w,i|
    #   yield "#{i}. #{w}"
    # end
  end
end