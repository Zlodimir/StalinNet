# coding: utf-8

require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


# If you want the logs displayed you have to do this before the call to setup
DataMapper::Logger.new($stdout, :debug)
# A Postgres connection:
DataMapper.setup(:default, 'postgres://net_stalin:123net456stalin@localhost/net_stalin')

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