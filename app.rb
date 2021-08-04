require 'sinatra'
require "sinatra/reloader" if development?

get '/secret' do
  "Sssshhh this is a secret"
end

get '/random-cat' do
  @names = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end

get '/formonly' do
erb(:index2)
end