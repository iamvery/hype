require 'sinatra/base'
require 'hype/routes/root'

module Hype
  class App < Sinatra::Application
    use Rack::Deflater
    use Routes::Root
  end
end
