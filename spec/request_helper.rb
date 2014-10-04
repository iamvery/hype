require 'rack/test'
require 'hype/app'

module Requests
  include Rack::Test::Methods

  def app
    Hype::App
  end
end

RSpec.configure do |c|
  c.include Requests
end
