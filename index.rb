# coding: utf-8

require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/За_батьку_нашего_Путина!' do
	@msg = 'За батьку нашего Путина!'
	erb :index
end 

get '/Za_batky_nashego_Stalina!' do
	@msg = 'За батьку нашего Сталина!'
	erb :index
end