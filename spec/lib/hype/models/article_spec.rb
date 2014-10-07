require 'spec_helper'
require 'hype/models/article'

describe Hype::Models::Article do
  describe '#word_count' do
    it 'returns the word count of the body' do
      article = described_class.new(body: 'one two')

      expect(article.word_count).to eq(2)
    end

    it 'returns zero when body is missing' do
      article = described_class.new

      expect(article.word_count).to eq(0)
    end
  end
end
