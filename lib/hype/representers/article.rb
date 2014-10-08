require 'roar/representer/json'
require 'roar/representer/feature/hypermedia'

module Hype
  module Representers
    module Article
      include Roar::Representer::JSON
      include Roar::Representer::Feature::Hypermedia

      property :title
      property :body
      property :word_count

      link :self do
        "//articles/#{title}"
      end
    end
  end
end
