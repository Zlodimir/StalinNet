require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/Za_batky_nashego_putina' do
	@msg = 'За батьку нашего Путина!'
	erb :index
end 

get '/Za_batky_nashego_Stalina!' do
	@msg = 'За батьку нашего Сталина!'
	erb :index
end