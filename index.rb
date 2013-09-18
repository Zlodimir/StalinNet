require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/Za_batky_nashego_putina' do
	erb :index
	@msg = 'ЗА БАТЬКУ ПУТИНА!!!'
end 

get '/За_батьку_нашего_Сталина!!!' do
	erb :index
	@msg = 'ЗА БАТЬКУ СТАЛИНА!!!'
end 
