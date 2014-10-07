require 'sinatra/base'
require 'hype/routes/posts'
require 'hype/routes/root'

module Hype
  class App < Sinatra::Application
    use Rack::Deflater
    use Routes::Posts
    use Routes::Root
  end
end
