# coding: utf-8

require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


# If you want the logs displayed you have to do this before the call to setup
#DataMapper::Logger.new($stdout, :debug)
# A Postgres connection:
DataMapper.setup(:default, 'postgres://net_stalin:123net456stalin@localhost/net_stalin')

class Vote
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :init_date,  DateTime  # init time
  property :ip,       	String    # Ip Address
  property :host, 		String    # Host name
  property :browser,	String	  # Browser
  property :vote,		Integer   # 1 - Stalin, 2 - Putin
end

DataMapper.finalize

#@ip = request.env['REMOTE_ADDR'].split(',').first

get '/' do
	erb :index
end

get '/За_батьку_нашего_Путина!' do
	vote = Vote.create(:init_date => Time.now, :ip => ip, :vote => 2)
	vote.save!
	@msg = 'За батьку нашего Путина!'
	erb :index
end 

get '/За_батьку_нашего_Сталина!' do
	vote = Vote.create(:init_date => Time.now, :ip => ip, :vote => 1)
	vote.save!
	@msg = 'За батьку нашего Сталина!'
	erb :index
end