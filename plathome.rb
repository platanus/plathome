require 'sinatra/base'
require 'pi_piper'
require './lib/door.rb'
require 'pry'

class Plathome < Sinatra::Base
  configure do
    set :bind, '0.0.0.0'
    set :doors, {
      out: Door.new(0),
      front: Door.new(1)
    }
  end

  get '/doors/:door' do
    settings.doors[params['door'].to_sym].open
  end

  at_exit do
    p "test"
  end

  run! if app_file == $0
end
