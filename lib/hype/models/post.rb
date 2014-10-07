require 'hype/db'

module Hype
  module Models
    class Post < Sequel::Model
      def word_count
        body.to_s.split.size
      end
    end
  end
end
