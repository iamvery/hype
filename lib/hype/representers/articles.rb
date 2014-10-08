require 'roar/representer/json'
require 'roar/representer/feature/hypermedia'
require 'hype/representers/article'

module Hype
  module Representers
    module Articles
      include Roar::Representer::JSON
      include Roar::Representer::Feature::Hypermedia

      def articles
        self
      end

      collection :articles, extend: Article

      link :self do
        "//articles"
      end
    end
  end
end
