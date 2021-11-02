require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Cats"
end

get '/random-cat' do
  @name =  ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/named-cat-form' do
  erb :named_cat_form
end