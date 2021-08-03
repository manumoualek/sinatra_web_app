require 'sinatra'
require "sinatra/reloader" if development?

get '/secret' do
  "Sssshhh this is a secret"
end

get '/cat' do
  erb(:index)
  # send_file "cat.html"
end