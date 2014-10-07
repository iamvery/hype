require 'virtus'

module Hype
  module Models
    class Article
      include Virtus.model

      attribute :title, String
      attribute :body, String
    end
  end
end
