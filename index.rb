# coding: utf-8

require 'rubygems'
require 'sinatra'
require 'postgres'

def connect(db, user, pw)
  PGconn.new('localhost', 5432, '', '', db, user, pw) 
end

conn = connect('net_stalin','net_stalin','123net456stalin')

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