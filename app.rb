#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
	
end

class Barber < ActiveRecord::Base
	
end

before do
	@barbers = Barber.all
end

get '/' do
	erb :index
end

get '/visit' do
		erb :visit
end

post '/visit' do
	@name = params[:name]
	@phone = params[:phone]
	@datestamp = params[:datestamp]
	@barber = params[:barber]
	@color = params[:color]

	

	erb :visit
end