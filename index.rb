# coding: utf-8

require 'rubygems'
require 'sinatra'
require 'data_mapper'


get '/' do
	erb :index
end

get '/За_батьку_нашего_Путина!' do
	@msg = 'За батьку нашего Путина!'
	erb :index
end 

get '/За_батьку_нашего_Сталина!' do
	@msg = 'За батьку нашего Сталина!'
	erb :index
end