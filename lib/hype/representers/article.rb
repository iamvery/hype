require 'roar/representer/json'

module Hype
  module Representers
    module Article
      include Roar::Representer::JSON

      property :title
      property :body
      property :word_count
    end
  end
end
