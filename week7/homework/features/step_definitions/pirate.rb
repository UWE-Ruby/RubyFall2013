class PirateTranslator
  attr_accessor :split


  def say(what)
    @what = what
  end

  def translate
    if ( @what =~ /Hello Friend/)
      @what = 'Ahoy Matey' + "/n Shiber Me Timbers You Scurvey Dogs!!"
    end
  end
  
   # can't figger out how to return a array of them both? 
   # this isn;t right. 
  def speak
    @arr = 'Shiber Me Timbers You Scurvey Dogs!!'
    @speak_a.push("@what", "@arr")
    @speak = speak.a.join(/\n /)
  end
end

