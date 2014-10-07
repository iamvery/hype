require 'virtus'

module Hype
  module Models
    class Article
      include Virtus.model

      attribute :title, String
      attribute :body, String

      def word_count
        body.to_s.split.size
      end
    end
  end
end
