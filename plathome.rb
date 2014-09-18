require 'sinatra/base'

class Plathome < Sinatra::Base

  get '/' do
    'Hello world!'
  end

end
