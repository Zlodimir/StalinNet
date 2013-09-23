require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/Za_batky_nashego_putina!' do
	#@msg = 'Za_batky_nashego_Putina!'
	@mas = 'За батьку нашего Путина!'
	erb :index
end 

get '/Za_batky_nashego_Stalina!' do
	@msg = 'Za_batky_nashego_Stalina!'
	erb :index
end