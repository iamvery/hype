require 'sinatra/base'
require 'json'
require 'hype/models/post'
require 'hype/representers/post_representer'

module Hype
  module Routes
    class Posts < Sinatra::Application
      get '/posts/:id' do
        post = Models::Post.find(params[:id])

        if post
          post.extend(PostRepresenter).to_json
        else
          halt 404
        end
      end
    end
  end
end
