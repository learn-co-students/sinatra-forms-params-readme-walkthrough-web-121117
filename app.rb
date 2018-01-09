require_relative 'config/environment'

require 'pry'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below

 # post is the form method
 # the form throws the data to the server
 # and it gets caught by having the same receiving address and a way of receiving the data
 # the name attributes of the form input correspond to the key in the params hash for that data

  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end

end
