require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/Za_batky_nashego_putina!' do
	@msg = 'Za_batky_nashego_putina!'
	erb :index
end 

get '/Za_batky_nashego_Stalina!' do
	@msg = 'Za_batky_nashego_Stalina!'
	erb :index
end