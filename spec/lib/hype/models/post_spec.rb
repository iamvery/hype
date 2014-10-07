require 'spec_helper'
require 'hype/models/post'

describe Hype::Models::Post do
  describe '#word_count' do
    it 'is the number of words in body' do
      post = described_class.new

      expect(post.word_count).to eq(0)
    end

    it 'is zero for post without body' do
      post = described_class.new(body: 'one two')

      expect(post.word_count).to eq(2)
    end
  end
end
