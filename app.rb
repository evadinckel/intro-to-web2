require 'sinatra'


get '/' do
  "Hello world"
end

get '/secret' do
  "The money is under the bed"
end

get '/menu' do
  "Welcome to Makers Academy"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end
