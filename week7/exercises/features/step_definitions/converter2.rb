class Converter

  attr_writer :type 

  def initalize celcius_value
    @value = celcius_value.to_f
  end


  def convert
  ((@value - 32 ) * (5.0 / 9.0)).round(1)
  end

end
