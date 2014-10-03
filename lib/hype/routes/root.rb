require 'sinatra/base'

module Hype
  module Routes
    class Root < Sinatra::Application
      get '/' do
        'Hi!'
      end
    end
  end
end
