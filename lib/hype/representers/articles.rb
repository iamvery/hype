require 'roar/representer/json'
require 'hype/representers/article'

module Hype
  module Representers
    module Articles
      include Roar::Representer::JSON

      def articles
        self
      end

      collection :articles, extend: Article
    end
  end
end
