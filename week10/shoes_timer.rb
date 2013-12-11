require 'shoes'
Shoes.app :height => 250, :width => 350 do
  background ask_color('Pick your BKG')
  stack :margin => 10 do
    button "Start" do
      @time = Time.now
      @label.replace "Stop watch started at #@time"
    end
    button "Stop" do
      @label.replace "Stopped, ", strong("#{Time.now - @time}"), " seconds elapsed."
    end
    @label = para "Press ", strong("start"), " to begin timing."
   
    button "Reset" do
      @label.replace "Press ", strong("start"), " to begin timing."
      @time = nil
    end  

  end
end
