require 'request_helper'
require 'json'
require 'hype/models/post'

describe 'Posts resource' do
  describe 'GET /posts' do
    it 'links to each post'
  end

  describe 'GET /posts/:id' do
    it 'responds with post attributes' do
      title = 'First!'
      body = 'Wow, wow.'
      post = Hype::Models::Post.create(title: title, body: body)

      get "/posts/#{post.id}"

      json = JSON.parse(last_response.body)

      expect(json.fetch(:title)).to eq(title)
      expect(json.fetch(:body)).to eq(body)
      expect(json.fetch(:word_count)).to eq(2)
    end
  end
end
