require 'sinatra/base'
require 'hype/routes/articles'
require 'hype/routes/root'

module Hype
  class App < Sinatra::Application
    use Rack::Deflater
    use Routes::Articles
    use Routes::Root
  end
end
