require 'sinatra'
require 'thin'
require "sinatra/reloader"

get '/hi/:name' do
	"<h1><font color='pink'>Hello <blink>#{params[:name]}</blink>!</font></h1>"+
	"<br/><a href='/'>Go Back</a>"
end

get '/' do 
	"<font color='green'>Ren&eacute;e</font> is the coolest teacher ever!"+
	"<br/><a href='/hi'>Click Here</a>"
end

get '/test-addition' do
	"<h1><marquee><blink><font color='purple'>#{1+2}</font></blink></marquee></h1>"
end
