require 'sinatra'
require "sinatra/reloader"
require 'puma'

get '/:name' do
  "<html>
  <body>
  <center>
  <h1><font color='green'>Hello #{params[:name]} the time is: #{Time.now}</font></h1>
  </center>
  </body>
  </html>"
end

get '/hi' do
  "<html>
  <body>
  <center>
  <h1><font color='blue'><marquee><blink>Hello World!!!</blink></marquee></font></h1>
  </center>
  </body>
  </html>"
end