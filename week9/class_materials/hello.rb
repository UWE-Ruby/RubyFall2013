require 'sinatra'
require 'sinatra/reloader'   #now just refresh rather than restart server

get '/' do #default route
  "<html>
  <body>
  <h1><font color='red'><marquee>Hello World!!!</h1>
  </body>
  </html>"
end