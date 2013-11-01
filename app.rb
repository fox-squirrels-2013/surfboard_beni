require 'sinatra'
require 'active_record'
require_relative './app/models/surfboard.rb'

ActiveRecord::Base.establish_connection(:adapter => 'postgresql', :database => "surfboards")


####### index 
get '/' do

  erb :index
end

get '/add' do

  erb :add
end

post '/success/' do 
	Surfboard.create!(model: params[:n_model], size: params[:n_size], shaper: params[:n_shaper], fin_number: params[:n_fin_number],fin_systeme: params[:n_fin_systeme] )
	@last_surfboard = Surfboard.last
  erb :success
end

post '/delete/' do 
  @deleted	= Surfboard.find_by(model: params[:d_model])	
  @deleted.destroy
	
  erb :delete
end

put '/update/' do 
  @old_name	= Surfboard.find_by(model: params[:u_model])	#old value
  @new_value = params[:new_model]# new value
  @old_name.update_attributes(:model => @new_value) 
  

 # @user.update_attributes(:status => 'active')

  #@old_name.name = params[:new_model]
	
  erb :update
end

get "/foo" do
  "<form action='/foo' method='post'>< <button type='submit'>submit</button> </form> "

end


put "/foo" do
  "f" 
  "\ndkgaawdj"
end
 

#post '/' do 
#	Surfboard.create!(model: params[:n_model], size: params[:n_size], shaper: params[:n_shaper], fin_number: params[:n_fin_number],fin_systeme: params[:n_fin_systeme]  )
#	erb :sucess
#end	