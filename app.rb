require 'sinatra/base'
require "sinatra/reloader" 

class Battle < Sinatra::Base

get '/' do
  "Hello World"
end

end
