require 'sinatra'
require 'active_record'
require_relative './app/models/surfboard.rb'

ActiveRecord::Base.establish_connection(:adapter => 'postgresql', :database => "surfboards")


####### index 
get '/' do

  erb :index
end

post '/success/' do 
	Surfboard.create!(model: params[:n_model], size: params[:n_size], shaper: params[:n_shaper], fin_number: params[:n_fin_number],fin_systeme: params[:n_fin_systeme] )
	@last_surfboard = Surfboard.last
  erb :success
end

#post '/' do 
#	Surfboard.create!(model: params[:n_model], size: params[:n_size], shaper: params[:n_shaper], fin_number: params[:n_fin_number],fin_systeme: params[:n_fin_systeme]  )
#	erb :sucess
#end	