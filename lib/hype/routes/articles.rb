require 'sinatra/base'
require 'hype/models/article'
require 'hype/representers/article'
require 'hype/representers/articles'

module Hype
  module Routes
    class Articles < Sinatra::Application
      get '/articles' do
        content_type :json
        articles = [Models::Article.new(title: 'WOW', body: 'Such hypermedia.')]
        articles.extend(Representers::Articles).to_json
      end

      get '/articles/:id' do
        content_type :json
        article = Models::Article.new(title: 'WOW', body: 'Such hypermedia.')
        article.extend(Representers::Article).to_json
      end
    end
  end
end
