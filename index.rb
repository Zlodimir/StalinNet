# coding: utf-8

require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

get '/Za_batky_nashego_putina!' do
	#@msg = 'Za batky nashego Putina!'
	@msg = 'За батьку нашего Путина!'
	erb :index
end 

get '/Za_batky_nashego_Stalina!' do
	@msg = 'Za batky nashego Stalina!'
	erb :index
end