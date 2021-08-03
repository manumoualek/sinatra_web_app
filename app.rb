require 'sinatra'
require "sinatra/reloader" if development?

get '/secret' do
  "Sssshhh this is a secret"
end

get '/cat' do
  '<img style ="border:dashed red;" src="https://i.imgur.com/jFaSxym.png">'
  # send_file "cat.html"
end