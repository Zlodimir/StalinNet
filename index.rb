# coding: utf-8

require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


# If you want the logs displayed you have to do this before the call to setup
#DataMapper::Logger.new($stdout, :debug)
DataMapper::Logger.new('datamapper.log', :debug)
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
# Automatically create the tables if they don't exist
#DataMapper.auto_migrate!
DataMapper.finalize

#@ip = request.env['REMOTE_ADDR'].split(',').first


=begin
puts @stalin_votes
puts @putin_votes
@putin_votes = 123
=end

after do
  	@stalin_votes = Vote.all(:vote => 1).count  
	@putin_votes = Vote.all(:vote => 2).count
end

get '/' do
	erb :index
end

get '/За_батьку_нашего_Путина!' do
	vote = Vote.new
	vote.attributes = {:init_date => Time.now, :ip => '222.333.444.555', :vote => 2}
	vote.save
	@msg = 'За батьку нашего Путина!'
	erb :index
end 

get '/За_батьку_нашего_Сталина!' do
	vote = Vote.new
	vote.attributes = {:init_date => Time.now, :ip => '222.333.444.555', :vote => 1}
	vote.save
	@msg = 'За батьку нашего Сталина!'
	erb :index
end