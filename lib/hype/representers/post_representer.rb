module Hype
  module PostRepresenter
    def to_json
      {
        title: title,
        body: body,
        word_count: word_count,
      }
    end
  end
end
