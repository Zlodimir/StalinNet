require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/За_батьку_нашего_Путина!!!' do
	erb :index
	@msg = 'ЗА БАТЬКУ ПУТИНА!!!'
end 

get '/За_батьку_нашего_Сталина!!!' do
	erb :index
	@msg = 'ЗА БАТЬКУ СТАЛИНА!!!'
end 
